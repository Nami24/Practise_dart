import 'package:flutter/material.dart';
import 'package:hopesindia/Screens/Accounts%20Screen/account_screen.dart';
import 'package:hopesindia/Screens/Accounts%20Screen/change_pswd_screen.dart';
import 'package:hopesindia/Screens/Campaigns%20Screen/campaigns_screen.dart';
import 'package:hopesindia/Screens/Campaigns%20Screen/schedules_screen.dart';
import 'package:hopesindia/Screens/Home%20Screen/home_screen.dart';
import 'package:hopesindia/Screens/Patients%20Screen/patients_screen.dart';
import 'package:hopesindia/Screens/Projects%20Screen/project_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        )),
    );
  }
}

  buildHeader(BuildContext context) => Container(
    color: const Color.fromARGB(255, 43, 194, 200),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 90,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/logo1.png'),
              )
            ),
          ),
        ),
        const SizedBox(height: 5.0,),
        Container(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
          color: Color.fromARGB(255, 12, 165, 158),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              Icon(Icons.person, color: Colors.white,),
              SizedBox(
                width: 5.0,
              ),
              Text('Namira Shaikh', style: TextStyle(fontSize: 18.0, color: Colors.white),),
            ],
          ),
        ),
      ],
    )
  );

  buildMenuItems(BuildContext context) => Column(
    children:  [
      const ListTile(
        title: Text('HOME',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Color.fromARGB(255, 43, 194, 200),
          ),
          ),
      ),
      ListTile(
        leading: const Icon(Icons.visibility),
        title: const Text('Overview',
        style: TextStyle(
        fontSize: 18.0,
        ),
        ),
        onTap: () =>
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => 
                const HomeSecreen(),
            ),
            ),
      ),
      const ListTile(
        title: Text('CAMPAIGNS',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Color.fromARGB(255, 43, 194, 200),
          ),
          ),
      ),
      ListTile(
        leading: const Icon(Icons.cloud_upload),
        title: const Text('Schedules',
        style: TextStyle(
        fontSize: 18.0,
        ),
        ),
        onTap: () =>
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => 
                const SchedulesScreen(),
            ),
            ),
      ),
      ListTile(
        leading: const Icon(Icons.check_box),
        title: const Text('Campaigns',
        style: TextStyle(
        fontSize: 18.0,
        ),
        ),
        onTap: () =>
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => 
                const CampaignScreen(),
            ),
            ),
      ),
      const ListTile(
        title: Text('PATIENTS',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Color.fromARGB(255, 43, 194, 200),
          ),
          ),
      ),
      ListTile(
        leading: const Icon(Icons.people_alt),
        title: const Text('All Patients',
        style: TextStyle(
        fontSize: 18.0,
        ),
        ),
        onTap: () =>
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => 
                const PatientsScreen(),
            ),
            ),
      ),
      const ListTile(
        title: Text('PROJECTS',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Color.fromARGB(255, 43, 194, 200),
          ),
          ),
      ),
       ListTile(
        leading: const Icon(Icons.bookmark),
        title: const Text('All Projects',
        style: TextStyle(
        fontSize: 18.0,
        ),
        ),
        onTap: () =>
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => 
                ProjectsScreen(projectType: '', projectName: '',),
            ),
            ),
      ),
      const ListTile(
        title: Text('ACCOUNTS',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
          color: Color.fromARGB(255, 43, 194, 200),
          ),
          ),
      ),
       ListTile(
        leading: const Icon(Icons.vpn_key),
        title: const Text('Change Password',
        style: TextStyle(
        fontSize: 18.0,
        ),
        ),
        onTap: () =>
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => 
                const ChangePswdScreen(),
            ),
            ),
      ),
       ListTile(
        leading: const Icon(Icons.person),
        title: const Text('My Account',
        style: TextStyle(
        fontSize: 18.0,
        ),
        ),
        onTap: () =>
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => 
                const AccountScreen(),
            ),
            ),
      ),
       ListTile(
        leading: const Icon(Icons.power_settings_new),
        title: const Text('Logout',
        style: TextStyle(
        fontSize: 18.0,
        ),
        ),
        onTap: () =>
          Navigator.of(context).pop(context),
      ),
    ],
  );
