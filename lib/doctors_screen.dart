import 'package:flutter/material.dart';
import 'doctors_list.dart';

class DoctorListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "doctors list",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23.0,
              color: Color(0xFFF0F0F0)),
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 3, 34, 102),
      ),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          final doctor = doctors[index];

          return Padding(
            padding: EdgeInsets.symmetric(
                vertical: 8.0), // Adjust the vertical space as needed
            child: ListTile(
              title: Text(
                doctor.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  "   Specialization: ${doctor.specialization}\n   Wilaya: ${doctor.wilaya} "),
              // Add more details or customize the UI as needed
            ),
          );
        },
      ),
    );
  }
}
