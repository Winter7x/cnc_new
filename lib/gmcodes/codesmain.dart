import 'package:flutter/material.dart';
import 'g_code.dart';
import 'g_turning.dart';
import 'm_mill.dart';
import 'M_turning.dart';

class CodesScreen extends StatelessWidget {
  const CodesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Codes',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0), // Padding around the grid
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16, // Space between columns
            mainAxisSpacing: 16, // Space between rows
            children: [
              _buildTile(
                context,
                icon: Icons.code,
                letter: 'G',
                label: 'G code Milling',
                color: Colors.teal[100]!,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => g_code(),
                    ),
                  );
                },
              ),
              _buildTile(
                context,
                icon: Icons.code,
                letter: 'G',
                label: 'G code Turning',
                color: Colors.teal[200]!,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GTurning(),
                    ),
                  );
                },
              ),
              _buildTile(
                context,
                icon: Icons.build,
                letter: 'M',
                label: 'M code Milling',
                color: Colors.amber[100]!,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Mmilling(),
                    ),
                  );
                },
              ),
              _buildTile(
                context,
                icon: Icons.build,
                letter: 'M',
                label: 'M code Turning',
                color: Colors.amber[200]!,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Mturning(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTile(BuildContext context, {IconData? icon, String? letter, required String label, required Color color, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(15), // Rounded tap area
      child: Card(
        elevation: 8, // Increased elevation for better shadow effect
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        color: color, // Set card background color
        child: Padding(
          padding: const EdgeInsets.all(16.0), // More padding inside card
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null)
                Icon(icon, size: 48, color: Colors.teal) // Larger icon size
              else
                Text(
                  letter ?? '',
                  style: const TextStyle(
                    fontSize: 48, // Increased font size for letter
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              const SizedBox(height: 8),
              Text(
                label,
                textAlign: TextAlign.center, // Center align text
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
