import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {

  static const String routeName = 'Settings';
  
  const SettingsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
         child: const Text('SettingsScreen'),
      ),
    );
  }
}