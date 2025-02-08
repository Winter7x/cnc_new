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
      debugShowCheckedModeBanner: false, // Remove debug ribbon
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Codes',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          centerTitle: true, // Center the title
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.teal,
                  Colors.indigo
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop(); // Navigate back
            },
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Color(0xFFE0F7FA)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: [
              _buildTile(
                context,
                icon: Icons.code,
                letter: 'G',
                label: 'G Code Milling',
                color: Colors.teal[100]!,
                gradient: const LinearGradient(
                  colors: [
                    Colors.teal,
                    Colors.indigo
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
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
                label: 'G Code Turning',
                color: Colors.teal[200]!,
                gradient: const LinearGradient(
                  colors: [
                    Colors.indigo,
                    Colors.purple
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
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
                label: 'M Code Milling',
                color: Colors.amber[100]!,
                gradient: const LinearGradient(
                  colors: [
                    Colors.orange,
                    Colors.deepOrange
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
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
                label: 'M Code Turning',
                color: Colors.amber[200]!,
                gradient: const LinearGradient(
                  colors: [
                    Colors.pink,
                    Colors.purple
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
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

  Widget _buildTile(
    BuildContext context, {
    IconData? icon,
    String? letter,
    required String label,
    required Color color,
    Gradient? gradient,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: gradient,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (icon != null)
                Icon(
                  icon,
                  size: 48,
                  color: Colors.white,
                ),
              if (icon == null)
                Text(
                  letter ?? '',
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              const SizedBox(height: 8),
              Text(
                label,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
