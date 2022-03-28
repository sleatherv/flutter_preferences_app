import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  static const String routeName = 'Home';
  
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      
      ),
      drawer: Drawer(),
      body: Center(
         child: const Text('HomeScreen'),
      ),
    );
  }
}