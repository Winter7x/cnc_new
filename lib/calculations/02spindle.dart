import 'package:flutter/material.dart';

class SpindleScreen extends StatefulWidget {
  @override
  _SpindleScreenState createState() => _SpindleScreenState();
}

class _SpindleScreenState extends State<SpindleScreen> {
  TextEditingController cuttingSpeedController = TextEditingController();
  TextEditingController toolDiameterController = TextEditingController();

  double spindleSpeed = 0.0;

  void _calculateSpindleSpeed() {
    double cuttingSpeed = double.tryParse(cuttingSpeedController.text) ?? 0;
    double toolDiameter = double.tryParse(toolDiameterController.text) ?? 0;

    setState(() {
      if (cuttingSpeed > 0 && toolDiameter > 0) {
        spindleSpeed = (cuttingSpeed * 1000) / (3.14159 * toolDiameter);
      } else {
        spindleSpeed = 0.0;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    cuttingSpeedController.addListener(_calculateSpindleSpeed);
    toolDiameterController.addListener(_calculateSpindleSpeed);
  }

  @override
  void dispose() {
    cuttingSpeedController.removeListener(_calculateSpindleSpeed);
    toolDiameterController.removeListener(_calculateSpindleSpeed);
    cuttingSpeedController.dispose();
    toolDiameterController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spindle Speed Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Formula: N = (V × 1000) / (π × D)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            _buildTextField(
              cuttingSpeedController,
              'Cutting Speed (V) in m/min',
            ),
            SizedBox(height: 16.0),
            _buildTextField(
              toolDiameterController,
              'Tool Diameter (D) in mm',
            ),
            SizedBox(height: 16.0),
            Text(
              'Spindle Speed: ${spindleSpeed.toStringAsFixed(2)} RPM',
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
