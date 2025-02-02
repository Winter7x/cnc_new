import 'package:flutter/material.dart';
import 'dart:math';

class ToolLifeScreen extends StatefulWidget {
  @override
  _ToolLifeScreenState createState() => _ToolLifeScreenState();
}

class _ToolLifeScreenState extends State<ToolLifeScreen> {
  TextEditingController cuttingSpeedController = TextEditingController();
  TextEditingController constantController = TextEditingController();
  TextEditingController exponentController = TextEditingController();

  double toolLife = 0.0;

  void _calculateToolLife() {
    double cuttingSpeed = double.tryParse(cuttingSpeedController.text) ?? 0;
    double constant = double.tryParse(constantController.text) ?? 0;
    double exponent = double.tryParse(exponentController.text) ?? 0;

    setState(() {
      toolLife = constant / pow(cuttingSpeed, exponent);
    });
  }

  @override
  void initState() {
    super.initState();
    cuttingSpeedController.addListener(_calculateToolLife);
    constantController.addListener(_calculateToolLife);
    exponentController.addListener(_calculateToolLife);
  }

  @override
  void dispose() {
    cuttingSpeedController.removeListener(_calculateToolLife);
    constantController.removeListener(_calculateToolLife);
    exponentController.removeListener(_calculateToolLife);
    cuttingSpeedController.dispose();
    constantController.dispose();
    exponentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tool Life Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Formula: Tool Life (T) = C / (V^n)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            _buildTextField(
                cuttingSpeedController, 'Cutting Speed (V) in m/min'),
            SizedBox(height: 16.0),
            _buildTextField(constantController, 'Constant (C)'),
            SizedBox(height: 16.0),
            _buildTextField(exponentController, 'Exponent (n)'),
            SizedBox(height: 16.0),
            Text(
              'Tool Life: ${toolLife.toStringAsFixed(2)} minutes',
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
