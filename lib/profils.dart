// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../../search.dart';
import '../../specialities.dart';
import '../../homepage.dart';
import '../../booking.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

// ignore: camel_case_types
class _profileState extends State<profile> {
  int _currentIndex = 0;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "profile",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23.0,
                color: Color.fromARGB(255, 20, 5, 5)),
          ),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Color.fromARGB(
            255,
            250,
            248,
            244,
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: GNav(
              backgroundColor: Colors.white,
              color: Colors.black,
              padding: EdgeInsets.all(16),
              curve: Curves.easeOutExpo,
              gap: 8,
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: 'Home',
                  border: _currentIndex == 0
                      ? Border.all(color: Colors.black, width: 2)
                      : null,
                ),
                GButton(
                  icon: LineIcons.heart,
                  text: 'Likes',
                  border: _currentIndex == 1
                      ? Border.all(color: Colors.black, width: 2)
                      : null,
                ),
                GButton(
                  icon: LineIcons.search,
                  text: 'Search',
                  border: _currentIndex == 2
                      ? Border.all(color: Colors.black, width: 2)
                      : null,
                ),
                GButton(
                  icon: LineIcons.user,
                  text: 'Profile',
                  border: _currentIndex == 3
                      ? Border.all(color: Colors.black, width: 2)
                      : null,
                ),
              ],
              selectedIndex: _currentIndex,
              onTabChange: (index) {
                setState(() {
                  _currentIndex = index;
                  switch (index) {
                    case 0:
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                      // Handle Home button press
                      break;
                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => search()),
                      );
                      // Handle Search button press
                      break;
                    case 2:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DoctorsScreen()),
                      );
                      // Handle Bookings button press
                      break;
                    case 3:
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => profile()),
                      );
                    // Handle Account button press
                    // Navigate to the signup page
                    /* Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => profile()),
                        );
                        break;*/
                  }
                });
              },
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Color.fromARGB(255, 241, 241, 241),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage('assets/man_doctor.jpg'),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dr.Khaled",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23.0,
                              color: Color.fromARGB(255, 5, 22, 39)),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Specialized in ......",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Color.fromARGB(255, 115, 116, 116)),
                        ),
                        SizedBox(
                          height: 3,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 540,
                      width: 380,
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: Color.fromARGB(255, 115, 116,
                              116), // Change the border color here
                          width: 1.0, // Change the border width here
                        ),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              'Location : ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  color: Color.fromARGB(255, 5, 22, 39)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'Constantine',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: Color.fromARGB(255, 89, 95, 101)),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'phone number ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  color: Color.fromARGB(255, 5, 22, 39)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                '0000000000',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                    color: Color.fromARGB(255, 89, 95, 101)),
                              ),
                            ),
                            SizedBox(height: 320),
                            Container(
                              margin: EdgeInsets.only(left: 110),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => book()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 254, 219, 195),
                                  padding: EdgeInsets.symmetric(
                                    vertical:
                                        15, // Adjust the vertical padding for height
                                    horizontal:
                                        40, // Adjust the horizontal padding for width
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                child: Text(
                                  'Book',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ]),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
