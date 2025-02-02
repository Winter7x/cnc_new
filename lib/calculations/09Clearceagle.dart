import 'package:flutter/material.dart';

class ClearanceTaperAnglesScreen extends StatefulWidget {
  @override
  _ClearanceTaperAnglesScreenState createState() =>
      _ClearanceTaperAnglesScreenState();
}

class _ClearanceTaperAnglesScreenState
    extends State<ClearanceTaperAnglesScreen> {
  TextEditingController initialDiameterController = TextEditingController();
  TextEditingController finalDiameterController = TextEditingController();
  TextEditingController lengthController = TextEditingController();

  double taperAngle = 0.0;

  void _calculateTaperAngle() {
    double initialDiameter =
        double.tryParse(initialDiameterController.text) ?? 0;
    double finalDiameter = double.tryParse(finalDiameterController.text) ?? 0;
    double length = double.tryParse(lengthController.text) ?? 0;

    setState(() {
      if (length > 0) {
        taperAngle = (initialDiameter - finalDiameter) / (2 * length);
      } else {
        taperAngle = 0.0;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    initialDiameterController.addListener(_calculateTaperAngle);
    finalDiameterController.addListener(_calculateTaperAngle);
    lengthController.addListener(_calculateTaperAngle);
  }

  @override
  void dispose() {
    initialDiameterController.removeListener(_calculateTaperAngle);
    finalDiameterController.removeListener(_calculateTaperAngle);
    lengthController.removeListener(_calculateTaperAngle);
    initialDiameterController.dispose();
    finalDiameterController.dispose();
    lengthController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clearance and Taper Angles Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Formula: Taper Angle = (Initial Diameter - Final Diameter) / (2 × Length)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            _buildTextField(initialDiameterController, 'Initial Diameter (mm)'),
            SizedBox(height: 16.0),
            _buildTextField(finalDiameterController, 'Final Diameter (mm)'),
            SizedBox(height: 16.0),
            _buildTextField(lengthController, 'Length (mm)'),
            SizedBox(height: 16.0),
            Text(
              'Taper Angle: ${taperAngle.toStringAsFixed(2)} degrees',
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
