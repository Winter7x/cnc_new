import 'package:flutter/material.dart';

class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  TextEditingController spindleSpeedController = TextEditingController();
  TextEditingController feedPerToothController = TextEditingController();
  TextEditingController numTeethController = TextEditingController();

  double feedRate = 0.0;

  void _calculateFeedRate() {
    double spindleSpeed = double.tryParse(spindleSpeedController.text) ?? 0;
    double feedPerTooth = double.tryParse(feedPerToothController.text) ?? 0;
    double numTeeth = double.tryParse(numTeethController.text) ?? 0;

    setState(() {
      feedRate = spindleSpeed * feedPerTooth * numTeeth;
    });
  }

  @override
  void initState() {
    super.initState();
    spindleSpeedController.addListener(_calculateFeedRate);
    feedPerToothController.addListener(_calculateFeedRate);
    numTeethController.addListener(_calculateFeedRate);
  }

  @override
  void dispose() {
    spindleSpeedController.removeListener(_calculateFeedRate);
    feedPerToothController.removeListener(_calculateFeedRate);
    numTeethController.removeListener(_calculateFeedRate);
    spindleSpeedController.dispose();
    feedPerToothController.dispose();
    numTeethController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed Rate Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Formula: F = N × f × t',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            _buildTextField(spindleSpeedController, 'Spindle Speed (N) in RPM'),
            SizedBox(height: 16.0),
            _buildTextField(
                feedPerToothController, 'Feed per Tooth (f) in mm/tooth'),
            SizedBox(height: 16.0),
            _buildTextField(numTeethController, 'Number of Cutting Teeth (t)'),
            SizedBox(height: 16.0),
            Text(
              'Feed Rate: ${feedRate.toStringAsFixed(2)} mm/min',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hintText) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: hintText,
        border: OutlineInputBorder(),
      ),
    );
  }
}
