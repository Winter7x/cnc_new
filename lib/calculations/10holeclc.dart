import 'package:flutter/material.dart';

class HoleOrThreadCalculationsScreen extends StatefulWidget {
  @override
  _HoleOrThreadCalculationsScreenState createState() =>
      _HoleOrThreadCalculationsScreenState();
}

class _HoleOrThreadCalculationsScreenState
    extends State<HoleOrThreadCalculationsScreen> {
  TextEditingController majorDiameterController = TextEditingController();
  TextEditingController minorDiameterController = TextEditingController();
  TextEditingController drillSizeController = TextEditingController();

  double pitchDiameter = 0.0;
  double holeDiameter = 0.0;

  void _calculateDiameters() {
    double majorDiameter = double.tryParse(majorDiameterController.text) ?? 0;
    double minorDiameter = double.tryParse(minorDiameterController.text) ?? 0;
    double drillSize = double.tryParse(drillSizeController.text) ?? 0;

    setState(() {
      pitchDiameter = (majorDiameter + minorDiameter) / 2;
      holeDiameter = (drillSize - minorDiameter) / 2;
    });
  }

  @override
  void initState() {
    super.initState();
    majorDiameterController.addListener(_calculateDiameters);
    minorDiameterController.addListener(_calculateDiameters);
    drillSizeController.addListener(_calculateDiameters);
  }

  @override
  void dispose() {
    majorDiameterController.removeListener(_calculateDiameters);
    minorDiameterController.removeListener(_calculateDiameters);
    drillSizeController.removeListener(_calculateDiameters);
    majorDiameterController.dispose();
    minorDiameterController.dispose();
    drillSizeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hole or Thread Calculations'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Formulas:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Pitch Diameter (P_d) = (Major Diameter + Minor Diameter) / 2',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            Text(
              'Hole Diameter (D) = (Drill Size - Minor Diameter) / 2',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            _buildTextField(majorDiameterController, 'Major Diameter (mm)'),
            SizedBox(height: 16.0),
            _buildTextField(minorDiameterController, 'Minor Diameter (mm)'),
            SizedBox(height: 16.0),
            _buildTextField(drillSizeController, 'Drill Size (mm)'),
            SizedBox(height: 16.0),
            Text(
              'Pitch Diameter: ${pitchDiameter.toStringAsFixed(2)} mm',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Hole Diameter: ${holeDiameter.toStringAsFixed(2)} mm',
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
