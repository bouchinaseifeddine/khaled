import 'package:flutter/material.dart';
import 'doctors_list.dart';
import 'dart:core';
import '../../hospitals_list.dart';
import '../../specialities.dart';
import 'package:flutter/material.dart';
import 'doctors_list.dart';
import '../../profils.dart';
import '../../search.dart';
import 'doctors_screen.dart';
import '../../hospitals_screen.dart';

class DoctorListScreenbyspecialization extends StatelessWidget {
  final List<Doctor> doctors;
  final int _currentIndex = 0;
  int currentIndex = 0;
  final String selectedSpecialization;

  DoctorListScreenbyspecialization(
      {super.key, required this.doctors, required this.selectedSpecialization});
  @override
  Widget build(BuildContext context) {
    List<Doctor> filteredDoctors = doctors
        .where((doctor) =>
            doctor.specialization.toLowerCase() ==
            selectedSpecialization.toLowerCase())
        .toList();
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "doctors list",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23.0,
                color: Color(0xFFF0F0F0)),
          ),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 3, 34, 102),
        ),
        body: ListView.builder(
          itemCount: filteredDoctors.length,
          itemBuilder: (context, index) {
            final doctor = filteredDoctors[index];
            return ListTile(
              title: Text(doctor.name),
              subtitle: Text('Specialization: ${doctor.specialization}'),
              // Add more details or customize the UI as needed
            );
          },
        ));
  }
}
