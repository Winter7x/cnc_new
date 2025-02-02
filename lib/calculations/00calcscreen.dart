import 'package:flutter/material.dart';
import '01feed.dart';
import '02spindle.dart';
import '03Mterialrr.dart';
import '04Depthcut.dart';
import '05toollife.dart';
import '06Cforce.dart';
import '07PowerR.dart';
import '08ChipL.dart';
import '09Clearceagle.dart';
import '10holeclc.dart';

class CNCCalculationsfeed extends StatefulWidget {
  @override
  _CNCCalculationsScreenState createState() => _CNCCalculationsScreenState();
}

class _CNCCalculationsScreenState extends State<CNCCalculationsfeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CNC Calculations'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(16.0),
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
        children: [
          _buildTile(
            context,
            icon: Icons.speed,
            label: 'Feed Rate',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FeedScreen()),
              );
            },
          ),
          _buildTile(
            context,
            icon: Icons.rotate_right,
            label: 'Spindle Speed',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SpindleScreen()),
              );
            },
          ),
          _buildTile(
            context,
            icon: Icons.blur_linear,
            label: 'Material Removal Rate',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MRRScreen()),
              );
            },
          ),
          _buildTile(
            context,
            icon: Icons.line_weight,
            label: 'Depth of Cut',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DepthOfCutScreen()),
              );
            },
          ),
          _buildTile(
            context,
            icon: Icons.access_time,
            label: 'Tool Life',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ToolLifeScreen()),
              );
            },
          ),
          _buildTile(
            context,
            icon: Icons.build,
            label: 'Cutting Force',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CuttingForceScreen()),
              );
            },
          ),
          _buildTile(
            context,
            icon: Icons.power,
            label: 'Power Requirement',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PowerRequirementScreen()),
              );
            },
          ),
          _buildTile(
            context,
            icon: Icons.scatter_plot,
            label: 'Chip Load',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChipLoadScreen()),
              );
            },
          ),
          _buildTile(
            context,
            icon: Icons.swap_horiz,
            label: 'Clearance and Taper Angles',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ClearanceTaperAnglesScreen()),
              );
            },
          ),
          _buildTile(
            context,
            icon: Icons.format_list_numbered,
            label: 'Hole or Thread Calculations',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HoleOrThreadCalculationsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildTile(BuildContext context,
      {required IconData icon,
      required String label,
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
            style: const TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.bold,
              height: 1.2,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
