import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_typeform/flutter_typeform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _flutterTypeformPlugin = FlutterTypeform();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    await _flutterTypeformPlugin.preparePage();
  }

  Future<void> openForm1() async {
    await _flutterTypeformPlugin.openForm('uVffDxfX', onSubmitted: () {
      print('Form submitted');
    });
  }

  Future<void> openForm2() async {
    await _flutterTypeformPlugin.openForm('vTB2DpMY');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: openForm1,
                child: const Text('Open Form 1'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: openForm2,
                child: const Text('Open Form 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
