import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_todolist/screens/HomeScreen.dart';
import 'package:getx_todolist/screens/TodoScreen.dart';
//import 'package:get_storage/get_storeage.dart';

void main() async {
  //await GetStorage.inti();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}
