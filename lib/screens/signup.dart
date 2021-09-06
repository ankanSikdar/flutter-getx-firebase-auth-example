import 'package:firebase_authentication/controllers/authController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  final AuthController authController = Get.find();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SignUp'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: 'Email'),
                  controller: emailController,
                ),
                SizedBox(height: 40.0),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Password'),
                  controller: passwordController,
                ),
                SizedBox(height: 60.0),
                ElevatedButton(
                  onPressed: () async {
                    await authController.signUp(
                        email: emailController.text,
                        password: passwordController.text);
                    Get.back();
                  },
                  child: Text('SignUp'),
                ),
                SizedBox(height: 60.0),
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
