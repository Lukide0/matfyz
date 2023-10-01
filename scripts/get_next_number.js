function get_next_number(tp, digits = 2) {
  const re = /^\d{2} /;
  const path = tp.file.folder(true);

  const series = app.plugins.plugins.dataview.api
    .pages(`"${path}"`)
    .where((p) => re.test(p.file.name));

  const len = series.length + 1;
  return len.toString().padStart(digits, "0");
}

module.exports = get_next_number;
