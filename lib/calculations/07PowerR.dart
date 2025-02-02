import 'package:flutter/material.dart';

class PowerRequirementScreen extends StatefulWidget {
  @override
  _PowerRequirementScreenState createState() => _PowerRequirementScreenState();
}

class _PowerRequirementScreenState extends State<PowerRequirementScreen> {
  TextEditingController cuttingForceController = TextEditingController();
  TextEditingController cuttingSpeedController = TextEditingController();

  double powerRequirement = 0.0;

  void _calculatePowerRequirement() {
    double cuttingForce = double.tryParse(cuttingForceController.text) ?? 0;
    double cuttingSpeed = double.tryParse(cuttingSpeedController.text) ?? 0;

    setState(() {
      powerRequirement = (cuttingForce * cuttingSpeed) / 60000;
    });
  }

  @override
  void initState() {
    super.initState();
    cuttingForceController.addListener(_calculatePowerRequirement);
    cuttingSpeedController.addListener(_calculatePowerRequirement);
  }

  @override
  void dispose() {
    cuttingForceController.removeListener(_calculatePowerRequirement);
    cuttingSpeedController.removeListener(_calculatePowerRequirement);
    cuttingForceController.dispose();
    cuttingSpeedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Power Requirement Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Formula: P = (F_c × V_c) / 60,000',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            _buildTextField(cuttingForceController, 'Cutting Force (F_c) in N'),
            SizedBox(height: 16.0),
            _buildTextField(
                cuttingSpeedController, 'Cutting Speed (V_c) in m/min'),
            SizedBox(height: 16.0),
            Text(
              'Power Requirement: ${powerRequirement.toStringAsFixed(2)} kW',
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
