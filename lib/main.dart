import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(
    DevicePreview(
      backgroundColor: Colors.white,  // Professional, clean background
      enabled: true,                 // Let the magic begin!
      defaultDevice: Devices.ios.iPhone13ProMax,  // Start with a bang
      isToolbarVisible: true,                     // Give users control
      availableLocales: [Locale('en', 'US')],    // Keep it focused
      tools: const [
        DeviceSection(
          model: true,          // Let them switch devices
          orientation: false,   // Keep it simple
          frameVisibility: false, // Clean presentation
          virtualKeyboard: false, // Focus on the UI
        ),
      ],
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preference Demo',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

