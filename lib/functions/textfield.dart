// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  final String hinttext;
  final TextEditingController mycontroller;
  const Customtextfield(
      {super.key, required this.hinttext, required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycontroller,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Color.fromARGB(255, 152, 152, 152))),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: Color.fromARGB(255, 152, 152, 152))),
      ),
    );
  }
}
