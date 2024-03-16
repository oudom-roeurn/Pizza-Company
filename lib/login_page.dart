// ignore_for_file: prefer_const_constructors

import 'package:design_app_ui/home_page.dart';
import 'package:design_app_ui/signup_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String? email;
  String? password;
  Future<void> getUser() async {
    var pref = await SharedPreferences.getInstance();
    setState(() {
      email = pref.getString('email') ?? 'admin';
      password = pref.getString('pass') ?? 'admin';
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                  image: NetworkImage(
                      "https://img.freepik.com/free-vector/flat-design-pizzeria-vintage-logo_23-2150237000.jpg?w=740&t=st=1708185751~exp=1708186351~hmac=1735118f7ca7e9a343ab9d37fb7de6c543e1d38af681f8bf6d7a7bf055e6578d")),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CupertinoButton(
                      color: Colors.black,
                      child: const Text('Login'),
                      onPressed: () async {
                        await getUser();
                        if (emailController.text.isEmpty ||
                            passController.text.isEmpty) {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Please Enter Something'),
                          ));
                        } else {
                          if (emailController.text == email &&
                              passController.text == password) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ));
                          } else {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text(
                                'Something wrong',
                                selectionColor: Colors.red,
                              ),
                            ));
                          }
                        }
                      }),
                  CupertinoButton(
                      color: Colors.black,
                      child: const Text('Sign Up'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ));
                      }),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
