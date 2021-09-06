import 'package:firebase_authentication/controllers/authController.dart';
import 'package:firebase_authentication/screens/home.dart';
import 'package:firebase_authentication/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Root extends StatelessWidget {
  Root({Key? key}) : super(key: key);

  final AuthController authController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => authController.user != null ? Home() : Login());
  }
}
