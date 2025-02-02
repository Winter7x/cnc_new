import 'package:flutter/material.dart';
import 'guide1.dart'; // Import Guide1

class GuidesScreen extends StatelessWidget {
  const GuidesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Guides',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        children: [
          _buildTile(
            context,
            icon: Icons.note,
            label: 'Fundamentals of CNC',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Guide1(pdfPath: 'assets/FundamentalsOfCNC.pdf'),
                ),
              );
            },
          ),
          _buildTile(
            context,
            icon: Icons.book,
            label: 'Basics',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Guide1(pdfPath: 'assets/Basic Guide for engg.pdf'),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTile(BuildContext context,
      {IconData? icon,
      String? letter,
      required String label,
      TextStyle? labelStyle,
      required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
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
          const SizedBox(height: 8),
          Text(
            label,
            style: labelStyle ??
                const TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
          ),
        ],
      ),
    );
  }
}
