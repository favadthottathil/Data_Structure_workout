void main() {
  var date = "6th Jun 1933";

  var months = {
    "Jan": '01',
    "Feb": '02',
    "Mar": '03',
    "Apr": '04',
    "May": '05',
    "Jun": '06',
    "Jul": '07',
    "Aug": '08',
    "Sep": '09',
    "Oct": '10',
    "Nov": '11',
    "Dec": '12',
  };

  List<String> dateList = date.split(' ');

  String year = dateList[2];

  String day = dateList[0].replaceAll(RegExp(r'[^\d]'), '');

  day = day.padLeft(2, '0');

  var month = '';

  for (var date in months.keys) {
    if (date == dateList[1]) {
      month = months[date]!;
    }
  }

  print('$year-$month-$day');
}
