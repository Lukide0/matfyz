#!/usr/bin/env bash

set -ueo pipefail

PREFIX="${PREFIX:-/opt/mffd3s/}"
FOLDER="$PWD/binutils-tmp"

BINUTILS_VERSION="${BINUTILS_VERSION:-2.41}"
BINUTILS_NAME="binutils-${BINUTILS_VERSION}"
BINUTILS_FILE="${BINUTILS_NAME}.tar.gz"
BINUTILS_URL="ftp://ftp.gnu.org/gnu/binutils/${BINUTILS_FILE}"
BINUTILS_CHECKSUM="4c6d90deba4514b06cf2558e3bd695ec80844daee8666b5398a8b6c51f49b4287a7791d0524d9a97be2040e0a0f80c7edb071afd295ef8aa181aa61da6cd595e"


GCC_VERSION="${GCC_VERSION:-12.3.0}"
GCC_NAME="gcc-${GCC_VERSION}"
GCC_FILE="${GCC_NAME}.tar.gz"
GCC_URL="ftp://ftp.gnu.org/gnu/gcc/gcc-${GCC_VERSION}/${GCC_FILE}"
GCC_CHECKSUM="3affe905593e8c64a916a59d4410d9bdf718a2b211ae5a6c7c66af9eed11da0869f4c30d12a5ebba1363f2f809d10ae4cb7aeaac27e3f70f8585c6593773d856"

BINUTILS_FILE_LOC="${FOLDER}/${BINUTILS_FILE}"
BINUTILS_FOLDER="${FOLDER}/${BINUTILS_NAME}"

GCC_FILE_LOC="${FOLDER}/${GCC_FILE}"
GCC_FOLDER="${FOLDER}/${GCC_NAME}"

TARGETS=("mipsel-linux-gnu" "riscv32-unknown-elf")

MAX_JOBS="$( nproc 2>/dev/null )"
if [ -z "$MAX_JOBS" ]; then
    MAX_JOBS=2
fi

COLOR_SUPPORT="$( tput colors )"

print_with_color() {
    local text="$1"
    local color="$2"

    # stdout is terminal
    if ! [ -t 1 ]; then
        echo "$text"
    fi
    
    # color support
    if [[ -n "$COLOR_SUPPORT" && $COLOR_SUPPORT -ge 8 ]]; then
        echo -e "${color}${text}\e[0m"
    else
        echo "$text"
    fi
}

error_msg() {
    print_with_color "[ERROR]: $1" "\e[0;31m" >&2
}

warn_msg() {
    print_with_color "[WARN]: $1" "\e[0;33m" >&2
}

info_msg() {
    print_with_color "[INFO]: $1" "\e[0;36m" >&1
}

download() {


    local file="$1"
    local url="$2"
    local checksum="$3"
    
    info_msg "Downloading '$file' from '$url'"
    
    local exists=0

    if [ -f "$file" ]; then
        exists=1

    elif ! curl -s "$url" --create-dirs -o "$file" 2>&1 >/dev/null; then
        error_msg "curl '$url' failed"
        exit 1
    fi

    local file_checksum="$( sha512sum "$file" | cut -f 1 -d ' ' )"
    info_msg "Checking file checksum '$file'"
    
    if ! [ "$checksum" = "$file_checksum" ]; then
        error_msg "$file: invalid checksum."

        if [ "$exists" ]; then
            warn_msg "try to remove '$file'"
        fi

        exit 1
    fi

}

extract() {
    local archive="$1"
    local folder="$2"

    info_msg "Extracting '$archive' to '$folder'"
    tar -xzf "$archive" -C "$folder"

}


download "$BINUTILS_FILE_LOC" "$BINUTILS_URL" "$BINUTILS_CHECKSUM"
extract "$BINUTILS_FILE_LOC" "$FOLDER"

cd "$FOLDER"


for target in "${TARGETS[@]}"; do
    info_msg "Building binutils for '$target'"

    "${BINUTILS_FOLDER}/configure"      \
        --target="$target"              \
        --prefix="$PREFIX"              \
        --program-prefix="${target}-"   \
        --disable-gdb                   \
        --disable-werror                \
        --disable-nls                   \
        --with-sysroot                  \
        --enable-deterministic-archives 

    make --jobs="$MAX_JOBS" all
    sudo make --jobs="$MAX_JOBS" install 
    make distclean
done

download "$GCC_FILE_LOC" "$GCC_URL" "$GCC_CHECKSUM"
extract "$GCC_FILE_LOC" "$FOLDER"


for target in "${TARGETS[@]}"; do
    info_msg "Building GCC for '$target'"
    
    "${GCC_FOLDER}/configure"           \
        --target="$target"              \
        --prefix="$PREFIX"              \
        --program-prefix="${target}-"   \
        --enable-languages=c,c++        \
        --enable-lto                    \
        --disable-nls                   \
        --disable-werror                \
        --without-headers

    make --jobs="$MAX_JOBS" all-gcc
    sudo make --jobs="$MAX_JOBS" install-gcc 
    make distclean

    # remove all cached configs
    rm -v -- */config.cache
done

info_msg "Done"
