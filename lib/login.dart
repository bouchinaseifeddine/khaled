import 'dart:core';

import '../../functions/textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Care Connect",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23.0,
              color: Color(0xFFF0F0F0)),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 39, 0, 130),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SignInForm(),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "Login",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Login to continue using the app",
                    style: TextStyle(color: Color.fromARGB(255, 170, 164, 164)),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text("Email"),
                  const SizedBox(
                    height: 7,
                  ),
                  Customtextfield(
                      hinttext: "enter your Email", mycontroller: email),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text("Password"),
                  const SizedBox(
                    height: 7,
                  ),
                  Customtextfield(
                      hinttext: "enter your password", mycontroller: password),
                  const SizedBox(height: 70),
                  MaterialButton(
                    onPressed: () {},
                    height: 55,
                    minWidth: 400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: const Text("Login"),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Center(
                      child: Text(
                    "or login with ",
                    style: TextStyle(color: Color.fromARGB(255, 170, 164, 164)),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(70)),
                        child: Image.asset('assets/google-white.jpg',
                            height: 50, width: 50),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed("SignInForm");
                    },
                    child: const Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                            text: "Don't have an account?",
                            style: TextStyle(color: Colors.grey)),
                        TextSpan(
                            text: "Register",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold)),
                      ])),
                    ),
                  )
                ]),
          ],
        ),
      ),
    );
  }
}
