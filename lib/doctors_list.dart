import 'dart:core';

class Doctor {
  final String name;
  final int age;
  final String wilaya;
  final String specialization;
  final int experience;

  Doctor({
    required this.name,
    required this.age,
    required this.wilaya,
    required this.specialization,
    required this.experience,
  });
}

List<Doctor> doctors = [
  Doctor(
      name: "aw",
      age: 25,
      wilaya: "annaba",
      specialization: "Anesthesiologist",
      experience: 5),
  Doctor(
      name: "leney",
      age: 25,
      wilaya: "constantine",
      specialization: "Nephrologist",
      experience: 5),
  Doctor(
      name: "Akram",
      age: 25,
      wilaya: "constantine",
      specialization: "Dentist",
      experience: 5),
  Doctor(
      name: "khaled el oualid",
      age: 27,
      wilaya: "alg",
      specialization: "Dentist",
      experience: 5),

  Doctor(
      name: "rir",
      age: 27,
      wilaya: "annaba",
      specialization: "Nephrologist",
      experience: 5),
  Doctor(
      name: "tignari",
      age: 27,
      wilaya: "constantine",
      specialization: "Dentist",
      experience: 5),
  // Add more doctors as needed
];
