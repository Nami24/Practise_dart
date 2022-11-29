import 'package:flutter/material.dart';
import 'package:hopesindia/Screens/main_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hopes India'),
        backgroundColor: const Color.fromARGB(255, 43, 194, 200),
      ),
      body: Center(
        child: 
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              Text('Hopes India', style: Theme.of(context).textTheme.headline5,),
              Text("We Are Determined", style: Theme.of(context).textTheme.subtitle2,),
            ],
          ),
        ),
      ),
      drawer: const MainDrawer(),
    );
  }
}