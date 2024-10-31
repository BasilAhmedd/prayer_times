import 'package:flutter/material.dart';

class PrayerTimeCard extends StatelessWidget {
  const   PrayerTimeCard(
      {super.key,
      required this.PrayerName,
      required this.PrayerTime,
      required this.date});

  final String PrayerName;
  final String PrayerTime;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      shadowColor: Colors.black,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              PrayerName,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              date,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              PrayerTime,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
