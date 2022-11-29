import 'package:flutter/material.dart';
import 'package:hopesindia/Screens/Projects%20Screen/add_projects.dart';
import 'package:hopesindia/Screens/main_drawer.dart';
import 'package:hopesindia/main.dart';

class ProjectsScreen extends StatelessWidget {
  ProjectsScreen({super.key, required this.projectName, required this.projectType,});

  String projectName;
  String projectType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back, color: const Color.fromARGB(255, 43, 194, 200)), 
        onPressed: () => 
        Navigator.of(context).pop(context),
        ),
        title: const Text('All Projects', style: TextStyle(color: Color.fromARGB(255, 43, 194, 200),),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.person),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(projectName),
                  Text(projectType),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 43, 194, 200),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const AddProjects()),);
        },
        child: const Icon(Icons.add),
        ),
    );
  }
}



