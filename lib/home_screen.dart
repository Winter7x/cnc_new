import 'package:cnc_app/qna_screen.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'G/M Codes',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _buildTile(
                context,
                icon: Icons.abc_rounded,
                label: 'G code Milling',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QnaScreen(),
                    ),
                  );
                },
              ),
              _buildTile(
                context,
                icon: Icons.book,
                label: 'G code Turning',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QnaScreen(),
                    ),
                  );
                },
              ),
              _buildTile(
                context,
                icon: Icons.dashboard,
                label: 'M code milling',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QnaScreen(),
                    ),
                  );
                },
              ),
              _buildTile(
                context,
                icon: Icons.lightbulb,
                label: 'M code Turning',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QnaScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Guide',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _buildTile(
                context,
                icon: Icons.apps,
                label: 'Basic CNC',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QnaScreen(),
                    ),
                  );
                },
              ),
              _buildTile(
                context,
                icon: Icons.build,
                label: 'Advanced',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QnaScreen(),
                    ),
                  );
                },
              ),
              _buildTile(
                context,
                icon: Icons.developer_mode,
                label: 'Extra Advance',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QnaScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTile(BuildContext context,
      {required IconData icon,
      required String label,
      TextStyle? labelStyle, // Added parameter for custom text style
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
              child: Icon(icon, size: 36, color: Colors.teal),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: labelStyle ?? // Use custom style if provided
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
