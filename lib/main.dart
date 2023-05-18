import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travelapp/page/detail_page.dart';
import 'package:travelapp/page/homepage.dart';
import 'package:travelapp/page/main_page.dart';

import 'page/welcome_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailPage(),
    );
  }
}
