import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double _fontSize = 16.0;
  bool _isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        actions: [
          IconButton(
            icon: Icon(_isDarkTheme ? Icons.dark_mode : Icons.light_mode),
            onPressed: () {
              setState(() {
                _isDarkTheme = !_isDarkTheme;
                // Toggle theme
                if (_isDarkTheme) {
                  // Change to dark theme
                  ThemeData.dark();
                } else {
                  // Change to light theme
                  ThemeData.light();
                }
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Font Size',
              style: TextStyle(fontSize: _fontSize),
            ),
            Slider(
              value: _fontSize,
              min: 10.0,
              max: 30.0,
              divisions: 10,
              label: _fontSize.toStringAsFixed(1),
              onChanged: (double value) {
                setState(() {
                  _fontSize = value;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Theme',
              style: TextStyle(fontSize: _fontSize),
            ),
            SwitchListTile(
              title: const Text('Dark Theme'),
              value: _isDarkTheme,
              onChanged: (bool value) {
                setState(() {
                  _isDarkTheme = value;
                  // Apply theme change
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
