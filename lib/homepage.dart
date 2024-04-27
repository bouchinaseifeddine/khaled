import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import '../../doctor_or_patient.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int _currentIndex = 0;

  /* final List<Widget> _listItem = [
     
    'assets/man_doctor.jpg' ,
    'assets/man_doctor.jpg' ,
    'assets/man_doctor.jpg' ,
    'assets/man_doctor.jpg' ,
    'assets/man_doctor.jpg' ,
    'assets/man_doctor.jpg' ,
    'assets/man_doctor.jpg' ,
    'assets/man_doctor.jpg' 
  ];*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
        appBar: AppBar(
          title: const Text(
            "Care Connect",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23.0,
              color: Color.fromRGBO(244, 243, 243, 1),
            ),
          ),
          centerTitle: false,
          backgroundColor: const Color.fromARGB(255, 30, 97, 91),

          // borderRadius : BorderRadius.vertical(bottom: Radius.circular(20))
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(244, 243, 243, 1),
              ),
              padding: const EdgeInsets.all(19.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 12,
                    ),

                    const Text(
                      "Connecting You to ",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      "Quality Healthcare !",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    Container(
                      height: 230,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                            image: AssetImage('assets/hospital.jpg'),
                            fit: BoxFit.cover),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.95),
                                  Colors.black.withOpacity(.6),
                                ])),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 60,
                            ),
                            const Text(
                              'Sign-in for better experience',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            GestureDetector(
                              onTap: () {
                                //// Navigate to the new screen when the container is tapped
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DoctorPatient()),
                                );
                              },
                              child: Container(
                                height: 50,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 40),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child: const Center(
                                  child: Text(
                                    'sign-in',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              /* GridView.count(
                              crossAxisCount: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              children: _listItem.map((item)Card ),
                            )*/
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    //our most experienced doc
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "Our most Experienced Doctors : ",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  listdr('assets/patient.jpg', 'dr khaled'),
                                  listdr('assets/man_doctor.jpg', 'dr aaa'),
                                  listdr('assets/female-doctor.jpg', 'dr ww'),
                                  listdr('assets/doctor.jpg', 'dr akram'),
                                  listdr('assets/man_doctor.jpg', 'leyney'),
                                ],
                              )),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                            height: 600,
                            margin: const EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/patient.jpg')),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                      begin: Alignment.bottomRight,
                                      colors: [
                                        Colors.black.withOpacity(.8),
                                        Colors.black.withOpacity(.1),
                                      ])),
                              child: const Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      'hh',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17),
                                    ),
                                  )),
                            )))
                  ]))
        ])));
  }

  Widget listdr(Image, name) {
    return AspectRatio(
        aspectRatio: 2 / 3,
        child: GestureDetector(
          // onTap: () {
          // profile();
          //},
          child: Container(
            width: 100,
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(Image)),
            ),
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.1),
                  ])),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      name,
                      style: const TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  )),
            ),
          ),
        ));
  }
}
