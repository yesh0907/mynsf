class Days {
  final String days;
  final String workingDays;

  Days({this.days, this.workingDays});

  factory Days.fromJson(Map<String, dynamic> json) {
    return Days(
      days: json['days'],
      workingDays: json['wd_days'],
    );
  }
}