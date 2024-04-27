import 'dart:core';

import '../../functions/textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../homepage.dart';

class SigninDoctor extends StatefulWidget {
  const SigninDoctor({super.key});

  @override
  _SigninDoctorState createState() => _SigninDoctorState();
}

class _SigninDoctorState extends State<SigninDoctor> {
  final int _currentIndex = 0;
  int currentIndex = 0;

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
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController wilaya = TextEditingController();
  TextEditingController speciality = TextEditingController();

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
                    height: 10,
                  ),
                  const Text(
                    "Sign-up",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Full Name"),
                  const SizedBox(
                    height: 7,
                  ),
                  Customtextfield(
                      hinttext: "Your Name", mycontroller: username),
                  const SizedBox(
                    height: 7,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text("Wilaya"),
                  const SizedBox(
                    height: 7,
                  ),
                  Customtextfield(
                      hinttext: "Your Wilaya", mycontroller: wilaya),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text("Location"),
                  const SizedBox(
                    height: 7,
                  ),
                  Customtextfield(
                      hinttext: "Your Location", mycontroller: location),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text("Email"),
                  const SizedBox(
                    height: 7,
                  ),
                  Customtextfield(hinttext: "Your Email", mycontroller: email),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text("password"),
                  const SizedBox(
                    height: 7,
                  ),
                  Customtextfield(
                      hinttext: "Your Password", mycontroller: password),
                  const SizedBox(height: 50),
                  MaterialButton(
                    onPressed: () async {
                      try {
                        final credential = await FirebaseAuth.instance
                            .createUserWithEmailAndPassword(
                          email: email.text,
                          password: password.text,
                        );
                        Navigator.of(context).pushReplacementNamed("homepage");
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          print('The password provided is too weak.');
                        } else if (e.code == 'email-already-in-use') {
                          print('The account already exists for that email.');
                        }
                      } catch (e) {
                        print(e);
                      }
                    },
                    height: 55,
                    minWidth: 400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: const Text("Sign-up"),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Center(
                      child: Text(
                    "or Sign-up with ",
                    style: TextStyle(color: Color.fromARGB(255, 170, 164, 164)),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Image.asset('assets/google-white.jpg',
                            height: 50, width: 50),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed("Login");
                    },
                    child: const Center(
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                            text: "Have an account?",
                            style: TextStyle(color: Colors.grey)),
                        TextSpan(
                            text: "Login",
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
