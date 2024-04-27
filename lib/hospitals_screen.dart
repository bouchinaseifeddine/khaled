import 'package:flutter/material.dart';
import 'hospitals_list.dart';

class WilayaScreen extends StatefulWidget {
  final List<Hospital> hospitals;

  WilayaScreen({required this.hospitals});

  @override
  _WilayaScreenState createState() => _WilayaScreenState();
}

class _WilayaScreenState extends State<WilayaScreen> {
  String selectedWilaya = "";
  Map<String, List<Hospital>> hospitalsByWilaya = {};

  @override
  void initState() {
    super.initState();
    hospitalsByWilaya = groupHospitalsByWilaya(widget.hospitals);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wilaya Screen'),
      ),
      body: Column(
        children: [
          // Dropdown to select wilaya

          // Display hospitals for the selected wilaya
          Expanded(
            child: ListView.builder(
              itemCount: hospitalsByWilaya[selectedWilaya]?.length ?? 0,
              itemBuilder: (context, index) {
                Hospital hospital = hospitalsByWilaya[selectedWilaya]![index];
                return ListTile(
                  title: Text(hospital.name),
                  subtitle: Text(hospital.wilaya),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Map<String, List<Hospital>> groupHospitalsByWilaya(List<Hospital> hospitals) {
    Map<String, List<Hospital>> groupedHospitals = {};

    for (Hospital hospital in hospitals) {
      if (groupedHospitals.containsKey(hospital.wilaya)) {
        groupedHospitals[hospital.wilaya]!.add(hospital);
      } else {
        groupedHospitals[hospital.wilaya] = [hospital];
      }
    }

    return groupedHospitals;
  }
}
