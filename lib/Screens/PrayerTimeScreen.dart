import 'package:flutter/material.dart';
import 'package:prayer_times/Providers/prayer_times_provider.dart';
import 'package:provider/provider.dart';

import '../widgets/prayer_time_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Prayer Times')),
      body: Consumer<PrayerTimeProvider>(
        builder: (context, provider, child) {
          final prayerTimesV = provider.prayerTimeModel;

          if (prayerTimesV == null) {
            provider.fetchPrayerTime();
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.separated(
              itemCount: prayerTimesV.time.length,
              itemBuilder: (context, index) {
                final prayerName = prayerTimesV.time.keys;
                final prayerTime = prayerTimesV.time.values;
                final date = prayerTimesV.date.values;
                return PrayerTimeCard(
                  PrayerName: prayerName.elementAt(index),
                  PrayerTime: prayerTime.elementAt(index),
                  date: date.elementAt(0),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 20),
            );
          }
        },
      ),
    );
  }
}
