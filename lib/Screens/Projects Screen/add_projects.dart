import 'package:flutter/material.dart';
import 'package:hopesindia/Screens/Projects%20Screen/project_form.dart';

class AddProjects extends StatelessWidget {
  const AddProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back, color: const Color.fromARGB(255, 43, 194, 200)), 
        onPressed: () => 
        Navigator.of(context).pop(context),
        ),
        title: const Text('Add New Projects', style: TextStyle(color: Color.fromARGB(255, 43, 194, 200),),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: const ProjectForm(),
    );
  }
}

