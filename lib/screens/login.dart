import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

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
                  onPressed: () {},
                  child: Text('Login'),
                ),
                SizedBox(height: 60.0),
                TextButton(
                  onPressed: () {},
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
