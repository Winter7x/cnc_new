import 'package:flutter/material.dart';
import 'g_code.dart';
import 'g_turning.dart';
import 'm_mill.dart';
import 'M_turning.dart';

class CodesScreen extends StatelessWidget {
  const CodesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Codes',
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
            letter: 'G',
            label: 'G code Milling',
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
            letter: 'G',
            label: 'G code Turning',
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
            letter: 'M',
            label: 'M code Milling',
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
            letter: 'M',
            label: 'M code Turning',
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
