import 'package:flutter/material.dart';
import 'package:cnc_app/gmcodes/codesmain.dart'; // Import CodesScreen
import 'package:cnc_app/guide/guidemain.dart'; // Import GuidesScreen
import 'package:cnc_app/calculations/00calcscreen.dart'; // Import CNCCalculationsfeed
import 'package:cnc_app/Threads/_00ThreadMain.dart'; // Import ThreadsScreen

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CNC APP',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.2,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueAccent,
                Colors.indigo
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        elevation: 8,
        shadowColor: Colors.blueAccent.withOpacity(0.3),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: [
              _buildTile(
                context,
                icon: Icons.code,
                label: 'Codes',
                color: Colors.blue,
                onTap: () => _navigateTo(context, const CodesScreen()),
              ),
              _buildTile(
                context,
                icon: Icons.menu_book,
                label: 'Guides',
                color: Colors.green,
                onTap: () => _navigateTo(context, const GuidesScreen()),
              ),
              _buildTile(
                context,
                icon: Icons.calculate,
                label: 'Calculator',
                color: Colors.orange,
                onTap: () => _navigateTo(context, CNCCalculationsfeed()),
              ),
              _buildTile(
                context,
                icon: Icons.handyman,
                label: 'Threads',
                color: Colors.purple,
                onTap: () => _navigateTo(context, const ThreadsScreen()),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTile(
    BuildContext context, {
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(15),
        shadowColor: color.withOpacity(0.2),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(15),
          splashColor: color.withOpacity(0.1),
          hoverColor: color.withOpacity(0.05),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.grey.shade200,
                width: 1,
              ),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    icon,
                    size: 32,
                    color: color,
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Text(
                    label,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey.shade800,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                  color: Colors.grey.shade400,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _navigateTo(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      PageRouteBuilder(
        transitionDuration: const Duration(milliseconds: 400),
        pageBuilder: (_, __, ___) => screen,
        transitionsBuilder: (_, animation, __, child) => FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    );
  }
}
