import 'package:challenge/challenge01.dart';
import 'package:challenge/challenge09.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Challenges',
      //home: Challenge01(),
      home: NeoComp(),
    );
  }
}
