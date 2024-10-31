class PrayerTimeModel {
  Map<String, dynamic> time;
  Map<String, dynamic> date;

  PrayerTimeModel({required this.date, required this.time});

  factory PrayerTimeModel.fromJson(Map<String, dynamic> json) {
    return PrayerTimeModel(
        time: json["data"]["timings"], date: json["data"]["date"]);
  }
}
