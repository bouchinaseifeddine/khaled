import 'package:flutter/material.dart';

import 'doctors_list.dart';
import '../../profils.dart';
import '../../specialities.dart';
import '../../homepage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

// ignore: camel_case_types
class _searchState extends State<search> {
  int _currentIndex = 0;
  int currentIndex = 0;

  @override
  final TextEditingController _searchController = TextEditingController();
  List<Doctor> _filteredDoctors = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "search",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23.0,
                color: Color(0xFFF0F0F0)),
          ),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 30, 97, 91),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: GNav(
              backgroundColor: Colors.white,
              color: Colors.black,
              padding: const EdgeInsets.all(16),
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
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                      // Handle Home button press
                      break;
                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const search()),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const profile()),
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
        body: Stack(children: [
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(244, 243, 243, 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: TextField(
                    controller: _searchController,
                    onChanged: _onSearchTextChanged,
                    decoration: const InputDecoration(
                      hintText: 'Search for doctors...',
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Expanded(
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView.builder(
                        itemCount: _filteredDoctors.isNotEmpty
                            ? _filteredDoctors.length
                            : doctors.length,
                        itemBuilder: (context, index) {
                          final doctor = _filteredDoctors.isNotEmpty
                              ? _filteredDoctors[index]
                              : doctors[index];

                          return ListTile(
                            title: Text(
                              doctor.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            subtitle: Text(
                              doctor.specialization,
                              style: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            leading: const CircleAvatar(
                              radius: 30.0,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ]))
        ]));
  }

  void _onSearchTextChanged(String query) {
    setState(() {
      _filteredDoctors = doctors.where((doctor) {
        return doctor.name.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }
}
