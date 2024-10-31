import 'package:flutter/material.dart';
import 'package:prayer_times/Providers/prayer_times_provider.dart';
import 'package:prayer_times/Screens/PrayerTimeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
          create: (context) => PrayerTimeProvider(), child: HomeScreen()),
    );
  }
}
