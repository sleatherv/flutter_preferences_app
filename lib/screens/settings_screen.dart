import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/side_menu.dart';

class SettingsScreen extends StatefulWidget {

  static const String routeName = 'Settings';
  
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  bool isDarkMode = false;
  int gender = 1;
  String name = 'Steven';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Settings', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),
              const Divider(),

              SwitchListTile.adaptive(
                value: isDarkMode,
                title: const Text('Darkmode'),
                onChanged: (value){
                  isDarkMode = value;
                  setState(() {});
                }
              ),
              const Divider(),
              RadioListTile<int>(
                value: 1,
                groupValue: gender,
                title: const Text('Male'),
                onChanged: (value) {
                  gender = value ?? 1;
                  setState(() {});
                },
              ),
              RadioListTile<int>(
                value: 2,
                groupValue: gender,
                title: const Text('Female'),
                onChanged: (value) {
                  gender = value ?? 2;
                  setState(() {});
                },
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: name,
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    helperText: 'Username'
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}