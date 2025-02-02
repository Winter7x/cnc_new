import 'package:flutter/material.dart';
import 'package:cnc_app/gmcodes/codesmain.dart';
import 'guide/guidemain.dart'; // Import GuideMain
import 'calculations/00calcscreen.dart'; // Import CNCCalculationsfeed
import 'Threads/_00ThreadMain.dart'; // Import the new Threads screen

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CNC APP',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _buildTile(
                context,
                icon: Icons.code,
                label: 'Codes',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CodesScreen(),
                    ),
                  );
                },
              ),
              _buildTile(
                context,
                icon: Icons.menu_book,
                label: 'Guides',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GuidesScreen(),
                    ),
                  );
                },
              ),
              _buildTile(
                context,
                icon: Icons.calculate,
                label: 'Calulator',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CNCCalculationsfeed(),
                    ),
                  );
                },
              ),
              _buildTile(
                context,
                icon: Icons.timeline,
                label: 'Threads',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ThreadsScreen(),
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

  Widget _buildTile(BuildContext context, {IconData? icon, String? letter, required String label, TextStyle? labelStyle, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: icon != null
                      ? Icon(icon, size: 36, color: Colors.teal)
                      : Text(
                          letter ?? '',
                          style: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                ),
              ),
              const SizedBox(width: 8), // Space between icon and label
              Expanded(
                // Use Expanded to allow label to take remaining space
                child: Text(
                  label,
                  style: labelStyle ??
                      const TextStyle(
                        fontSize: 16, // Increased font size for better visibility
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                  textAlign: TextAlign.start, // Align text to start
                ),
              ),
            ],
          ),
          const SizedBox(height: 16), // Space between tiles
        ],
      ),
    );
  }
}
