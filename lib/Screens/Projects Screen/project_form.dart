import 'package:flutter/material.dart';
import 'package:hopesindia/Screens/Projects%20Screen/project_screen.dart';

class ProjectForm extends StatefulWidget {
  const ProjectForm({super.key});

  @override
  State<ProjectForm> createState() => _ProjectFormState();
}

class _ProjectFormState extends State<ProjectForm> {

  final _projectNameController = TextEditingController();
  final _projectTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: _projectNameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.drive_file_rename_outline,),
                  labelText: 'Project Name',
                  hintText: 'project name',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                controller: _projectTypeController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.title),
                  labelText: 'Project Type',
                  hintText: 'project type',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "Project's Doctor Name",
                  hintText: "project's doctor name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.description),
                  labelText: "Project's Description",
                  hintText: "project's ddescription",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 120,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (contex) {
                            return ProjectsScreen(
                              projectName: _projectNameController.text, 
                              projectType: _projectTypeController.text,);
                          }));
                        }, 
                        style:  ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 43, 194, 200),
                          shape: const StadiumBorder(),),
                        icon: const Icon(Icons.save), 
                        label: const Text('Submit', style: TextStyle(fontSize: 18.0),), 
                        ),
                    ),
                  ],
                ),
              )
            ],
          ),
          
        ),
        
      ),
      
      );
  }
}


