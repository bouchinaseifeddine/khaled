import 'package:flutter/material.dart';
import '../../search.dart';
import '../../specialities.dart';
import '../../homepage.dart';
import '../../profils.dart';

import 'package:flutter/src/material/date_picker_theme.dart';

class book extends StatefulWidget {
  const book({super.key});

  @override
  State<book> createState() => _bookState();
}

// ignore: camel_case_types
class _bookState extends State<book> {
  int ratings = 0;
  int _currentIndex = 0;
  int currentIndex = 0;
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );

    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "profile",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23.0,
              color: Color(0xFFF0F0F0)),
        ),
        elevation: 200.0,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 3, 34, 102),
      ),
      bottomNavigationBar: Container(
          height: 60.0,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 3, 34, 102),
          ),
          child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                  // Perform different actions based on the selected index
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
                        MaterialPageRoute(builder: (context) => const search()),
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage('assets/man_doctor.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
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
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 3, 122, 137),
                padding: const EdgeInsets.symmetric(
                  vertical: 15, // Adjust the vertical padding for height
                  horizontal: 40, // Adjust the horizontal padding for width
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                'Select Date',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _selectTime(context),
              style: ElevatedButton.styleFrom(
                //  primary: Color.fromARGB(255, 3, 122, 137),
                padding: const EdgeInsets.symmetric(
                  vertical: 15, // Adjust the vertical padding for height
                  horizontal: 40, // Adjust the horizontal padding for width
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                'Select Time',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Selected Date: ${selectedDate.toLocal()}',
              style: const TextStyle(color: Colors.black, fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              'Selected Time: ${selectedTime.format(context)}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 3, 122, 137),
                padding: const EdgeInsets.symmetric(
                  vertical: 15, // Adjust the vertical padding for height
                  horizontal: 40, // Adjust the horizontal padding for width
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
