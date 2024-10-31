import 'package:dio/dio.dart';
import 'package:prayer_times/Model/prayer_time_model.dart';
class PrayerTimeService{
   static Dio dio = Dio();

   static Future<PrayerTimeModel> getPrayerTimes() async{
     try{
       const String url = "http://api.aladhan.com/v1/timingsByCity?country=egypt&city=giza";
       var response = await dio.get(url);
       if(response.statusCode==200){
         return PrayerTimeModel.fromJson(response.data);
       }else{
         throw Exception("Failed to load ");
       }
     }catch(e){
       throw Exception(e.toString());
     }

   }
}