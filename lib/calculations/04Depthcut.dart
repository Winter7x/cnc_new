import 'package:flutter/material.dart';

class DepthOfCutScreen extends StatefulWidget {
  @override
  _DepthOfCutScreenState createState() => _DepthOfCutScreenState();
}

class _DepthOfCutScreenState extends State<DepthOfCutScreen> {
  TextEditingController initialDiameterController = TextEditingController();
  TextEditingController finalDiameterController = TextEditingController();

  double depthOfCut = 0.0;

  void _calculateDepthOfCut() {
    double initialDiameter =
        double.tryParse(initialDiameterController.text) ?? 0;
    double finalDiameter = double.tryParse(finalDiameterController.text) ?? 0;

    setState(() {
      depthOfCut = (initialDiameter - finalDiameter) / 2;
    });
  }

  @override
  void initState() {
    super.initState();
    initialDiameterController.addListener(_calculateDepthOfCut);
    finalDiameterController.addListener(_calculateDepthOfCut);
  }

  @override
  void dispose() {
    initialDiameterController.removeListener(_calculateDepthOfCut);
    finalDiameterController.removeListener(_calculateDepthOfCut);
    initialDiameterController.dispose();
    finalDiameterController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Depth of Cut Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Formula: Depth of Cut = (Initial Diameter - Final Diameter) / 2',
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
            Text(
              'Depth of Cut: ${depthOfCut.toStringAsFixed(2)} mm',
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
