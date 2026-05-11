import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile & Settings'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Guest User'),
            subtitle: Text('Offline Mode'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text('Theme Preferences'),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About RBI DSIM App'),
          ),
        ],
      ),
    );
  }
}
