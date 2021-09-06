import 'package:firebase_authentication/controllers/authController.dart';
import 'package:firebase_authentication/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final AuthController authController = Get.find();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
                  onPressed: () {
                    authController.login(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                  },
                  child: Text('Login'),
                ),
                SizedBox(height: 60.0),
                TextButton(
                  onPressed: () {
                    Get.to(() => SignUp());
                  },
                  child: Text('SignUp'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
