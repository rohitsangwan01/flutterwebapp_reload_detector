// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutterwebapp_reload_detector/flutterwebapp_reload_detector.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isReloaded = false;
  @override
  void initState() {
    // Make sure to Call this on Top Level Widget only once
    WebAppReloadDetector.onReload(() {
      setState(() {
        isReloaded = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Browser Reloaded Detector'),
      ),
      body: Center(
        child: Text(
          'WebApp Reloaded : $isReloaded',
          style: TextStyle(
            color: isReloaded ? Colors.green : Colors.red,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
