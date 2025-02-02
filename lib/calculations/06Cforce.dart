import 'package:flutter/material.dart';

class CuttingForceScreen extends StatefulWidget {
  @override
  _CuttingForceScreenState createState() => _CuttingForceScreenState();
}

class _CuttingForceScreenState extends State<CuttingForceScreen> {
  TextEditingController specificCuttingForceController =
      TextEditingController();
  TextEditingController depthOfCutController = TextEditingController();
  TextEditingController widthOfCutController = TextEditingController();

  double cuttingForce = 0.0;

  void _calculateCuttingForce() {
    double specificCuttingForce =
        double.tryParse(specificCuttingForceController.text) ?? 0;
    double depthOfCut = double.tryParse(depthOfCutController.text) ?? 0;
    double widthOfCut = double.tryParse(widthOfCutController.text) ?? 0;

    setState(() {
      cuttingForce = specificCuttingForce * depthOfCut * widthOfCut;
    });
  }

  @override
  void initState() {
    super.initState();
    specificCuttingForceController.addListener(_calculateCuttingForce);
    depthOfCutController.addListener(_calculateCuttingForce);
    widthOfCutController.addListener(_calculateCuttingForce);
  }

  @override
  void dispose() {
    specificCuttingForceController.removeListener(_calculateCuttingForce);
    depthOfCutController.removeListener(_calculateCuttingForce);
    widthOfCutController.removeListener(_calculateCuttingForce);
    specificCuttingForceController.dispose();
    depthOfCutController.dispose();
    widthOfCutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cutting Force Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Formula: F_c = K_c × A',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            _buildTextField(specificCuttingForceController,
                'Specific Cutting Force (K_c) in N/mm²'),
            SizedBox(height: 16.0),
            _buildTextField(depthOfCutController, 'Depth of Cut (mm)'),
            SizedBox(height: 16.0),
            _buildTextField(widthOfCutController, 'Width of Cut (mm)'),
            SizedBox(height: 16.0),
            Text(
              'Cutting Force: ${cuttingForce.toStringAsFixed(2)} N',
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
