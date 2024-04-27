import 'dart:core';
import 'package:flutter/material.dart';

class Signinpatient extends StatefulWidget {
  @override
  _SigninpatientState createState() => _SigninpatientState();
}

class _SigninpatientState extends State<Signinpatient> {
  int _currentIndex = 0;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Care Connect",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23.0,
              color: Color(0xFFF0F0F0)),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 39, 0, 130),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SignInForm(),
      ),
    );
  }
}

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Full Name ',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your name';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Phone Number',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your Phone Number';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Wilaya',
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your wilaya';
              }
              return null;
            },
          ),
          SizedBox(height: 24),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Perform sign-in logic here
                // For now, let's just print a message
                print('Sign in button pressed');
              }
            },
            child: Text('Sign In'),
          ),
        ],
      ),
    );
  }
}
