import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'modules/comics/comics_page.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: ComicsPage(),
  ));
}
