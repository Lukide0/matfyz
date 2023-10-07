## Commands

BASIC commands are used used in the command mode. to enter, change, and debug programs. They only may be Command mode is when BASIC prompt character is displayed (-).
### General

| Name   | Desc                                          |
| ------ | --------------------------------------------- |
| HELP   | Display list of commands available            |
| LENGTH | Display current memory utilization of program |
| NAME   | Display or change name of program in memory   |
| NEW    | Initialize BASIC work area, new program       |

### Editing

| Name     | Desc                                               |
| -------- | -------------------------------------------------- |
| AUTO     | Auto line number for new line entry                |
| BOTTOM   | Position to the last line in the program           |
| CHANGE   | Change string in one or more lines of code         |
| DELETE   | Remove line(s) of code from program                |
| DOWN     | List next line                                     |
| INDENT   | Perform standard program indentation               |
| LIST     | List one or more lines of program                  |
| LOCATE   | Locate line containing string                      |
| LPLIST   | List one or more lines of program on printer       |
| LPXREF   | List cross reference table on printer              |
| MODIFY   | Character by character change of one or more lines |
| RENUMBER | Renumber all or part of program                    |
| TOP      | Position to the first line in the program          |
| UP       | List prior line                                    |
| XREF     | List cross reference table on terminal             |

### Disk programs

| Name | Desc                                           |
| ---- | ---------------------------------------------- |
| LOAD | Retrieve program from disk                     |
| RUN  | Execute program from disk or already in memory |
| SAVE | Save current program on disk                   |

### Debugging

| Name     | Desc                                                            |
| -------- | --------------------------------------------------------------- |
| BREAK    | Specify condition to break on                                   |
| CONTINUE | Resume execution                                                |
| STEP     | Execute next statement and stops                                |
| TRACE    | Display line numbers executed and optionally variables· changed |
| UNTRACE  | Discontinue trace mode                                          |
| UNBREAK  | Remove one or all breakpoints set                               |
| VARS     | Display contents of all variables defined                       |


## Statements

### Control/Branching

| Name      | Desc                                                      |
| --------- | --------------------------------------------------------- |
| CASE      | Used with SELECT                                          |
| CEND      | Used with SELECT                                          |
| ELSE      | Used with IF                                              |
| END       | Exits program                                             |
| FNEND     | Marks end of user defined function                        |
| FOR       | Loop control                                              |
| GOSUB     | Execute subroutine                                        |
| GOTO      | Unconditional branch                                      |
| IF        | Test expression-branch or execute depending on result     |
| IFEND     | Marks end of multi-line IF                                |
| NEXT      | Used with FOR                                             |
| ON ERROR  | Invokes user written error handling routine               |
| ON GOSUB  | Selects subroutine depending upon value                   |
| ON GOTO   | Selects branch depending upon value                       |
| OPTION    | Set various options                                       |
| OTHERWISE | Used with SELECT                                          |
| QUIT      | Exits BASIC                                               |
| RESTORE   | Resets DATA pointer                                       |
| RESUME    | Exits user written error handling routine                 |
| RETURN    | Exits subroutine                                          |
| SELECT    | Specifies value that determines statements to be executed |
| SLEEP     | Suspends processing for period of time                    |
| STOP      | Exits program                                             |
| THEN      | Used with IF                                              |
| WAIT      | Pauses at bottom of screen display                        |
| WEND      | Marks end of WHILE structure                              |
| WHILE     | Executes statements while expression is true              |

### Decl/Assignment

| Name   | Desc                                           |
| ------ | ---------------------------------------------- |
| CLEAR  | Erase variables from memory                    |
| COMMON | Defines variables used between program modules |
| DATA   | Defines data constants                         |
| DEF    | Defines user defined function                  |
| DIM    | Allocates array space                          |
| LET    | Assigns value to variable                      |
| MAT    | Assign values to arrays                        |

### File IO
| Name         | Desc                                          |
| ------------ | --------------------------------------------- |
| CLOSE        | Closes file                                   |
| DELETE       | Erase record from file                        |
| GET          | Get data from I/O devices                     |
| INPUT        | Accepts ASCII data from file                  |
| LINPUT       | Accepts line of ASCII data from file          |
| LINPUT USING | Accepts line of ASCII data with control       |
| MAT INPUT    | Accepts ASCII data from file-assigns to array |
| MAT PRINT    | Outputs ASCII data to file from array         |
| MAT READ     | Accepts data from file-assigns to array       |
| MAT WRITE    | Outputs data to file from array               |
| MOUNT        | Allows change of disk                         |
| OPEN         | Opens file for subsequent input and output    |
| POKE         | Modifies memory                               |
| PRINT        | Outputs ASCII data to file                    |
| PRINT USING  | Outputs formatted ASCII data to file          |
| PUT          | Puts data to I/O devices                      |
| READ         | Accepts data from file                        |
| READ NEXT    | Accepts data from indexed file                |
| UNLOCK       | Release record for other users use            |
| WRITE        | Outputs data to file                          |

### Program Linkage
| Name  | Desc                        |
| ----- | --------------------------- |
| CHAIN | Branches to another program |
| CSI   | Executes system program     |
| LINK  | Branches to another program |
| RUN   | Branches to another program |

### Other
| Name       | Desc |
| ---------- | ---- |
| empty line |      |
| RANDOMIZE  |      |
| REM        |      |

## Functions

### Numeric

| Name | Desc |
| ---- | ---- |
| ABS  | Absolute value  |
|ASC|Decimal value of character|
|ATN|Arctangent|
|BIN|Convert from binary base|
|COS|Cosine|
|DAY|Convert from ext date format|
|EXP|Exponential|
|FIX|Integerize number|
|FLOAT|Float integer number|
|HEX|Convert from hexadecimal base|
|INT|Return integer portion|
|LEN|Return length of string|
|LOG|Natural logarithm|
|MATCH|Compare string with mask |
|MAX|Return maximum of two numbers|
|MIN|Return minimum of two numbers|
|MOD|Perform modulo of number|
|NBR|Test string for numerics|
|OCT|Convert from octal base|
|PI|Constant: 3.141592653590|
|RND|Pseudorandom number|
|ROUND|Round number|
|SCH|Search string for sub-string|
|SEC|Convert from ext time format|
|SGN|Return sign of value|
|SIN|Sine|
|SQR|Square root of number|
|TAN|Tangent|
|VAL|Numeric value of string number|

### String

| Name     | Desc                             |
| -------- | -------------------------------- |
| AT$      | Cursor control                   |
| BINOF$   | Convert to binary base           |
| CHR$     | Return ASCII of number           |
| CRT$     | Cursor control                   |
| DATE$    | Convert to ext date              |
| DEL$     | Delete sub-string field          |
| DTE$     | Validate string for date         |
| EXT$     | Extract sub-string field         |
| FORMAT $ | Format string                    |
| HEXOF$   | Convert to hexadecimal base      |
| INS$     | Insert substring field           |
| LEFT$    | Return left portion of string    |
| LPAD$    | Add leading spaces               |
| LTRIM$   | Remove leading spaces            |
| MID$     | Return middle of string          |
| OCTOF$   | Convert to octal base            |
| OVR$     | Overlay string with string       |
| REP$     | Replace sub-string field         |
| RIGHT$   | Return right portion of string   |
| RPAD$    | Add trailing spaces              |
| RPT$     | Generate string of characters    |
| RTRIM$   | Remove trailing spaces           |
| SPACE$   | Generate string of spaces        |
| STR$     | Return ASCII value of character  |
| TIME$    | Convert to ext time format       |
| TRIM$    | Remove leading & trailing spaces |
### Logical

| Name | Desc                 |
| ---- | -------------------- |
| LRL  | Logical rotate left  |
| LRR  | Logical rotate right |
| LSL  | Logical shift left   |
| LSR  | Logical shift right  |

### Other

| Name | Desc                 |
| ---- | -------------------- |
| EOF  | Test for end of file |

## Keywords

- ABS
- FIX
- MAX
- RIGHT
- AND
- FLOAT
- MID
- RND
- ASC
- FNEND
- MIN
- ROUND
- AT
- FN
- MOD
- RPAD
- ATN
- FOR
- MOUNT
- RPT
- BIN
- FORMAT
- NBR
- RTRIM
- BINOF
- GET
- NEXT
- RUN
- CASE
- GOSUB
- OCT
- SCH
- CEND
- GOTO
- OCTOF
- SEC
- CHAIN
- HEX
- ON
- SELECT
- CHR
- HEXOF
- OPEN
- SGN
- CLEAR
- IF
- OPTION
- SIN
- CLOSE
- IFEND
- OR
- SLEEP
- COMMON
- IMP
- OTHERWISE
- SPACE
- COS
- INP
- OUTPUT
- SQR
- CRT
- INPUT
- OVR
- STEP
- CSI
- INS
- PAGE
- STOP
- DATA
- INT
- PI
- STR
- DATE
- LEFT
- POS
- TAN
- DAY
- LEN
- PRINT
- THEN
- DEF
- LET
- PROMPT
- TIME
- DEL
- LINE
- PUT
- TRIM
- DELETE
- LINK
- QUIT
- UNLOCK
- DIM
- LINPUT
- QUOTE
- USR
- DTE
- LOG
- RANDOMIZE
- VAL
- ELSE
- LPAD
- READ
- WAIT
- END
- LRL
- READNEXT
- WEND
- EOF
- LRR
- REM
- WHILE
- EQV
- LSL
- WRITE
- ERL
- LSR
- REP
- XOR
- ERR
- LTRIM
- RESTORE
- EXP
- HAT
- RESUME
- EXT
- MATCH
- RETURN


## Line format

1. NUMBER (LABEL : )? VERB OPERAND?
2. LABEL? VERB OPERAND?

- `;` 
	- multi-statement line separator
	- translated into `REM`

## Data types

### Numeric

> The decimal point may be omitted when the constant is a whole number outside of the range +32767 to -32767

- `25.`
- `-1234.01`
- `12345678901.23`
- `3.14159` 
- `.000002` 
- `-9876543210123`
- `234567` 
- `32760.`
- `.1234567890123`

#### E format

`<+ or ->x.xxxxxxxxxxE<+ or ->nnn`
### Integer

> An integer constant is a special type of numeric constant that is a whole number
(no fractional part) written without a decimal point and in the range of +32767 to
-32767

### HEX

`[0-9][0-9A-F]H`
- `1234H`
- `0FFFFH`

### String

`""` or `''`

- $\text{""} \rightarrow \text{"}$, $\text{''} \rightarrow \text{'}$
	- $\text{"He said, ""Open the book."""} \rightarrow \text{He said, "Open the book."}$

## Variable

`[A-Z][A-Z0-9.]`

- Numeric(default 0)
	- `A`
	- `A.B`
	- `A.0`
	- `A0.B`
- Int(default 0)
	- `A%`
	- `A.B%`
	- `A.0%`
	- `A0.B%`
	- pokud je mimo rozsah -> +-MAX and ERROR
- String(default null_string)
	- `A$`
	- `A.B$`
	- `A.0$`
	- `A0.B$`
## Array
- `ITEMS(n) = ITEMS[n]`
- `ITEMS(x,y) = ITEMS[x][y]`
- max dim is 2

`LET ITEMS%(4) = 1234`
Vytvoří pole s max. indexem 10 a `ITEMS[4] = 1234`

`LET ITEMS%(2,7) = 23`
> [!warning] Pozor
> Pokud je nastaven `OPTION BASE 0`, poté je pole $11\times11=121$.
> Pokud je nastaven `OPTION BASE 1`, poté je pole $10\times10=100$

## Functions types

Jsou 3 typy:
1. builtin [[#Functions]]
2. user defined
3. USR
> [!warning] Pozor
> User defined funkce musí začínat s `FN`

## Expressions

### Arithmetic + String

`<term> (<op> <term>)?`
#### Numbers
- *\<term\>*
	- konstanta
	- proměná
	- funkce
	- logic expr
	- relation expr
	- arithmetic expr
- *\<op\>*
	- `^` exponent
	- `*`
	- `/`
	- `+` (nebo unary)
	- `-` (nebo unary)

#### String
- *\<term\>*
	- konstanta
	- proměná
	- funkce
	- string expr
- *\<op\>*
	- `&` concat
### Logic
`<term> <op> <term>`

- *\<term\>*
	- arithmetic expr
- *\<op\>*
	- `NOT`
	- `AND`
	- `OR`
	- `XOR`
	- `IMP`
	- `EQV`
### Relational

`<term> <op> <term>`

- *\<term\>*
	- arithmetic expr
	- string expr
- *\<op\>*
	- `>`
	- `>=`
	- `<`
	- `<=`
	- ` = `
	- `<>` not eq

### Precedence

1. `()`
2. `^`
3. functions
4. `-`, `+` unary
5. `*`, `/`
6. `+`, `-`, `&`
7. `>`, `>=`, `<`, `<=`, ` = `,`<>`
8. `NOT`
9. `AND`
10. `OR`
11. `XOR`
12. `EQV`
13. `IMP`

> [!note] Poznámka
> Pokud mix typy(int, float), pak je nejdříve int převeden na float.
