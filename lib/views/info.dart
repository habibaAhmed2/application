import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical App Role Selection',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RoleSelectionScreen(),
    );
  }
}

class RoleSelectionScreen extends StatefulWidget {
  @override
  _RoleSelectionScreenState createState() => _RoleSelectionScreenState();
}

class _RoleSelectionScreenState extends State<RoleSelectionScreen> {
  String? selectedRole;
  String? selectedSpecialty;

  final List<String> roles = ['As a Doctor'];
  final List<String> specialties = [
    'General Internal Medicine',
    'Cardiology',
    'Gastroenterology & Hepatology',
    'Nephrology & Urology',
    'Endocrinology & Diabetes',
    'Rheumatology & Immunology'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'How Would You Like To Use the App?',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Select your Role',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 2.0,
                    color: Colors.grey,
                    offset: Offset(1.0, 1.0),
                  ),
                ],
              ),
            ),
            DropdownButton<String>(
              value: selectedRole,
              hint: Text('Select Role'),
              onChanged: (String? newValue) {
                setState(() {
                  selectedRole = newValue;
                });
              },
              items: roles.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text(
              'What Is Your Medical Specialty?',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 2.0,
                    color: Colors.grey,
                    offset: Offset(1.0, 1.0),
                  ),
                ],
              ),
            ),
            DropdownButton<String>(
              value: selectedSpecialty,
              hint: Text('Select Specialty'),
              onChanged: (String? newValue) {
                setState(() {
                  selectedSpecialty = newValue;
                });
              },
              items: specialties.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Colors.blue[900]!,
                    Colors.blue[500]!,
                    Colors.blue[300]!
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                ),
                onPressed: () {
                  // Handle the Next button action
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
