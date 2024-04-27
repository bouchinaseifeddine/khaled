import 'dart:core';
import 'package:flutter/material.dart';
import 'doctors_list.dart';
import '../../profils.dart';
import '../../search.dart';

import 'doctors_by_specialization.dart';

import '../../homepage.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({super.key});

  @override
  _DoctorsScreenState createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
  int _currentIndex = 0;
  int currentIndex = 0;

  /*final List<String> _listItem = [
    'assets/man_doctor.jpg',
    'assets/man_doctor.jpg',
    'assets/man_doctor.jpg',
    'assets/man_doctor.jpg',
    'assets/man_doctor.jpg',
    'assets/man_doctor.jpg',
    'assets/man_doctor.jpg',
    'assets/man_doctor.jpg',
  ];*/

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
        bottomNavigationBar: Container(
            height: 60.0,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 30, 97, 91),
            ),
            child: BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                    // Perform different actions based on the selected index
                    switch (index) {
                      case 0:
                        // Handle Home button press
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                        break;
                      case 1:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const search()),
                        );
                        // Handle Search button press
                        break;
                      case 2:
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DoctorsScreen()),
                        );
                        // Handle Bookings button press
                        break;
                      case 3:
                        // Handle Account button press
                        // Navigate to the signup page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const profile()),
                        );
                        break;
                    }
                  });
                },
                backgroundColor: Colors.transparent,
                unselectedItemColor: Colors.white,
                selectedItemColor: Colors.white,
                selectedFontSize: 12.0,
                unselectedFontSize: 12.0,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: '',
                    backgroundColor: Colors.transparent,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: '',
                    backgroundColor: Colors.transparent,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.book),
                    label: 'Bookings',
                    backgroundColor: Colors.transparent,
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: '',
                    backgroundColor: Colors.transparent,
                  )
                ])),
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            _buildBody(),
          ],
        ));
  }

  Widget _buildBody() {
    return Flexible(
        child: GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 15,
      mainAxisSpacing: 5,
      children: [
        _buildGridItem('Gynecologist', 'assets/dentist.jpg'),
        _buildGridItem('Gastroenterologist', 'assets/dentist.jpg'),
        _buildGridItem('Dermatologist', 'assets/dentist.jpg'),
        _buildGridItem('Cardiologist', 'assets/dentist.jpg'),
        _buildGridItem('Anesthesiologist', 'assets/dentist.jpg'),
        _buildGridItem('Dentist', 'assets/dentist.jpg'),
        _buildGridItem('Nephrologist', 'assets/dentist.jpg'),
        _buildGridItem('ENT Specialist', 'assets/dentist.jpg'),
        _buildGridItem('Physiotherapist', 'assets/dentist.jpg'),
        _buildGridItem('Psychiatrist', 'assets/dentist.jpg'),
        _buildGridItem('Homeopath', 'assets/dentist.jpg'),
        _buildGridItem('Oncologist', 'assets/dentist.jpg'),
      ],
    ));
  }

  Widget _buildGridItem(String specialization, String backgroundImage) {
    return GestureDetector(
        onTap: () {
          navigateToDoctorListScreen(context, specialization);
        },
        child: Column(children: <Widget>[
          Container(
              height: 180,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                    image: AssetImage(backgroundImage),
                    fit: BoxFit.cover,
                  )),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.49),
                        Colors.black.withOpacity(.13),
                      ])),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 130,
                        ),
                        Text(
                          specialization,
                          style: const TextStyle(
                              color: Color.fromARGB(253, 0, 82, 137),
                              fontSize: 21,
                              fontWeight: FontWeight.bold),
                        ),
                      ]))

              /* Card(
        child: Column(
          children: [
            // Background image
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  backgroundImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Title at the bottom
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                specialization,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),*/
              )
        ]));
  }

  void navigateToDoctorListScreen(
      BuildContext context, String selectedSpecialization) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DoctorListScreenbyspecialization(
            doctors: doctors, selectedSpecialization: selectedSpecialization),
      ),
    );
  }
}
