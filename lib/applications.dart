import 'package:flutter/material.dart';

class Applications extends StatelessWidget {
  Applications({super.key});

  // Define text styles
  static const TextStyle titleTextStyle = TextStyle(
      fontWeight: FontWeight.bold, color: Colors.deepPurple, fontSize: 24);

  static const TextStyle subtitleTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 71, 164, 221),
      fontSize: 20);

  static const TextStyle subtitle2TextStyle =
      TextStyle(fontWeight: FontWeight.bold, color: Colors.teal, fontSize: 16);

  static const TextStyle bodyTextStyle = TextStyle(
      fontWeight: FontWeight.normal, color: Colors.blueGrey, fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Applications'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: textItems.map((item) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['text'],
                    style: item['style'],
                  ),
                  const SizedBox(height: 10), // Space between items
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

  // List of text items with their respective styles
  // List of text items with their respective styles
  final List<Map<String, dynamic>> textItems = [
    {'text': 'Systems Engineering', 'style': titleTextStyle},
    {'text': 'Product Development', 'style': bodyTextStyle},
    {'text': 'Requirements Capture', 'style': bodyTextStyle},
    {'text': 'Change Management', 'style': bodyTextStyle},
    {'text': 'Mitigate Risks', 'style': bodyTextStyle},
    {'text': 'Deliver First Time Right', 'style': bodyTextStyle},
    {'text': 'Closed Loop System', 'style': titleTextStyle},
    {'text': 'Structure Manager', 'style': bodyTextStyle},
    {'text': 'Multi CAD Support', 'style': bodyTextStyle},
    {'text': 'BOM Management', 'style': bodyTextStyle},
    {'text': 'BOM Configuration', 'style': bodyTextStyle},
    {'text': 'Single Knowledge Source', 'style': bodyTextStyle},
    {'text': 'Capture Standard Process', 'style': bodyTextStyle},
    {'text': 'Reduce Cost & Time', 'style': bodyTextStyle},
    {'text': 'Classification', 'style': titleTextStyle},
    {'text': 'Capture Reusable Data', 'style': bodyTextStyle},
    {'text': 'Hierarchical Structure', 'style': bodyTextStyle},
    {'text': 'Maintain Latest Data', 'style': bodyTextStyle},
    {'text': 'Reduce Cost by Reusing', 'style': bodyTextStyle},
    {'text': 'Save Searching Time', 'style': bodyTextStyle},
    {'text': 'One Stop Shop for all resources', 'style': bodyTextStyle},
    {'text': 'Workflows', 'style': titleTextStyle},
    {'text': 'Capture Business Process', 'style': bodyTextStyle},
    {'text': 'Review, Analyze to Sign Off', 'style': bodyTextStyle},
    {'text': 'Capture Review Info', 'style': bodyTextStyle},
    {'text': 'Standard Organization Process', 'style': bodyTextStyle},
    {'text': 'Faster Review Process', 'style': bodyTextStyle},
    {'text': 'Capture & Track', 'style': bodyTextStyle},
    {'text': 'Manufacturing Process', 'style': titleTextStyle},
    {'text': 'Design, Manage, Analyze', 'style': bodyTextStyle},
    {'text': 'Clear Visibility to Manufacturing', 'style': bodyTextStyle},
    {'text': 'Change Effectivity', 'style': bodyTextStyle},
    {'text': 'Increase Effectivity', 'style': bodyTextStyle},
    {'text': 'Support Continuous Improvement', 'style': bodyTextStyle},
    {'text': 'Smarter Planning Decisions', 'style': bodyTextStyle},
  ];
}
