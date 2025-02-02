import 'package:flutter/material.dart';

class ChipLoadScreen extends StatefulWidget {
  @override
  _ChipLoadScreenState createState() => _ChipLoadScreenState();
}

class _ChipLoadScreenState extends State<ChipLoadScreen> {
  TextEditingController feedRateController = TextEditingController();
  TextEditingController numberOfTeethController = TextEditingController();
  TextEditingController spindleSpeedController = TextEditingController();

  double chipLoad = 0.0;

  void _calculateChipLoad() {
    double feedRate = double.tryParse(feedRateController.text) ?? 0;
    double numberOfTeeth = double.tryParse(numberOfTeethController.text) ?? 0;
    double spindleSpeed = double.tryParse(spindleSpeedController.text) ?? 0;

    setState(() {
      if (numberOfTeeth > 0 && spindleSpeed > 0) {
        chipLoad = feedRate / (numberOfTeeth * spindleSpeed);
      } else {
        chipLoad = 0.0;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    feedRateController.addListener(_calculateChipLoad);
    numberOfTeethController.addListener(_calculateChipLoad);
    spindleSpeedController.addListener(_calculateChipLoad);
  }

  @override
  void dispose() {
    feedRateController.removeListener(_calculateChipLoad);
    numberOfTeethController.removeListener(_calculateChipLoad);
    spindleSpeedController.removeListener(_calculateChipLoad);
    feedRateController.dispose();
    numberOfTeethController.dispose();
    spindleSpeedController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip Load Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Formula: Chip Load = Feed Rate / (Number of Teeth × Spindle Speed)',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            _buildTextField(feedRateController, 'Feed Rate (mm/min)'),
            SizedBox(height: 16.0),
            _buildTextField(numberOfTeethController, 'Number of Teeth'),
            SizedBox(height: 16.0),
            _buildTextField(spindleSpeedController, 'Spindle Speed (RPM)'),
            SizedBox(height: 16.0),
            Text(
              'Chip Load: ${chipLoad.toStringAsFixed(2)} mm/tooth',
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
