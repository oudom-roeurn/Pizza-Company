import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController cpassController = TextEditingController();

  Future<void> setUser() async {
    var pref = await SharedPreferences.getInstance();

    pref.setString('email', emailController.text);
    pref.setString('pass', passController.text);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Email'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'password'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: cpassController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'confirm-password'),
              ),
            ),
            CupertinoButton(
                color: Colors.black,
                child: const Text('Login'),
                onPressed: () {
                  if (emailController.text.isEmpty ||
                      passController.text.isEmpty ||
                      cpassController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text('Please Enter Something'),
                    ));
                  } else {
                    if (passController.text == cpassController.text) {
                      setUser().then((value) {
                        Navigator.pop(context);
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(
                          'Something wrong',
                          selectionColor: Colors.red,
                        ),
                      ));
                    }
                  }
                })
          ],
        ),
      )),
    );
  }
}
