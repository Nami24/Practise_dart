import 'package:flutter/material.dart';

class PatientsScreen extends StatelessWidget {
  const PatientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back, color: const Color.fromARGB(255, 43, 194, 200)), 
        onPressed: () => 
        Navigator.of(context).pop(context),
        ),
        title: const Text('All Patients', style: TextStyle(color: Color.fromARGB(255, 43, 194, 200),),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
    );
  }
}