import 'package:flutter/material.dart';
import 'package:prayer_times/Model/prayer_time_model.dart';
import 'package:prayer_times/Service/api_service.dart';

class PrayerTimeProvider extends ChangeNotifier{
    PrayerTimeModel? prayerTimeModel;

    Future<void> fetchPrayerTime()async{
      prayerTimeModel = await PrayerTimeService.getPrayerTimes();
      notifyListeners();
    }
}