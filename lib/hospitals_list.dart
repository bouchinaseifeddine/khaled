import 'dart:core';

class Hospital {
  final String name;
  final String wilaya;

  Hospital({
    required this.name,
    required this.wilaya,
  });
}

List<Hospital> hospitals = [
  Hospital(
    name: "A",
    wilaya: "constantine",
  ),
  Hospital(
    name: "C",
    wilaya: "constantine",
  ),

  Hospital(
    name: "R",
    wilaya: "annaba",
  ),
  Hospital(
    name: "G",
    wilaya: "constantine",
  ),
  // Add more doctors as needed
];
