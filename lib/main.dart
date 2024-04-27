import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:testt/sign-in-doctor.dart';
import 'package:testt/login.dart';
import 'package:testt/doctor_or_patient.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('********************User is currently signed out!');
      } else {
        print('***********************User is signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      routes: {
        "SignInForm": (context) => SigninDoctor(),
        "Login": (context) => Login(),
        "homepage": (context) => HomePage(),
      },
    );
  }
}
