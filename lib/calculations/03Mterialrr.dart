import 'package:flutter/material.dart';

class MRRScreen extends StatefulWidget {
  @override
  _MRRScreenState createState() => _MRRScreenState();
}

class _MRRScreenState extends State<MRRScreen> {
  TextEditingController feedRateController = TextEditingController();
  TextEditingController depthOfCutController = TextEditingController();
  TextEditingController widthOfCutController = TextEditingController();

  double mrr = 0.0;

  void _calculateMRR() {
    double feedRate = double.tryParse(feedRateController.text) ?? 0;
    double depthOfCut = double.tryParse(depthOfCutController.text) ?? 0;
    double widthOfCut = double.tryParse(widthOfCutController.text) ?? 0;

    setState(() {
      mrr = feedRate * depthOfCut * widthOfCut;
    });
  }

  @override
  void initState() {
    super.initState();
    feedRateController.addListener(_calculateMRR);
    depthOfCutController.addListener(_calculateMRR);
    widthOfCutController.addListener(_calculateMRR);
  }

  @override
  void dispose() {
    feedRateController.removeListener(_calculateMRR);
    depthOfCutController.removeListener(_calculateMRR);
    widthOfCutController.removeListener(_calculateMRR);
    feedRateController.dispose();
    depthOfCutController.dispose();
    widthOfCutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Removal Rate Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Formula: MRR = Feed Rate × Depth of Cut × Width of Cut',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            _buildTextField(feedRateController, 'Feed Rate (mm/min)'),
            SizedBox(height: 16.0),
            _buildTextField(depthOfCutController, 'Depth of Cut (mm)'),
            SizedBox(height: 16.0),
            _buildTextField(widthOfCutController, 'Width of Cut (mm)'),
            SizedBox(height: 16.0),
            Text(
              'Material Removal Rate: ${mrr.toStringAsFixed(2)} mm³/min',
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
