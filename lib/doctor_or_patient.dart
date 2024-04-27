import 'dart:core';

import 'package:flutter/material.dart';

import 'sign-in-doctor.dart';
import 'sign-in-patient.dart';
import '../../sign-in-doctor.dart';
import '../../sign-in-patient.dart';

class DoctorPatient extends StatefulWidget {
  const DoctorPatient({super.key});

  @override
  _DoctorPatientState createState() => _DoctorPatientState();
}

class _DoctorPatientState extends State<DoctorPatient> {
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
          backgroundColor: const Color.fromARGB(255, 30, 97, 91),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Are you a Doctor or a Patient?',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SigninDoctor()),
                      );
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/man_doctor.jpg',
                              height: 100, width: 100),
                          const Text('Doctor'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Signinpatient()),
                      );
                    },
                    child: Card(
                      child: Column(
                        children: [
                          Image.asset('assets/patient.jpg',
                              height: 100, width: 100),
                          const Text('Patient'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]));
  }
}
