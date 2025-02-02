import 'package:flutter/material.dart';

class g_code extends StatelessWidget {
  const g_code({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample G-code data
    final List<Map<String, String>> gCodeData = [
      {
        "Code": "G00",
        "Category": "Motion",
        "Function": "Move in a straight line at rapids speed."
      },
      {
        "Code": "G01",
        "Category": "Motion",
        "Function":
            "Move in a straight line at last speed commanded by a (F)eedrate"
      },
      {
        "Code": "G02",
        "Category": "Motion",
        "Function": "Clockwise circular arc at (F)eedrate"
      },
      {
        "Code": "G03",
        "Category": "Motion",
        "Function": "Counter-clockwise circular arc at (F)eedrate"
      },
      {
        "Code": "G01",
        "Category": "Motion",
        "Function":
            "Move in a straight line at last speed commanded by a (F)eedrate"
      },
      {
        "Code": "G02",
        "Category": "Motion",
        "Function": "Clockwise circular arc at (F)eedrate"
      },
      {
        "Code": "G03",
        "Category": "Motion",
        "Function": "Counter-clockwise circular arc at (F)eedrate"
      },
      {
        "Code": "G01",
        "Category": "Motion",
        "Function":
            "Move in a straight line at last speed commanded by a (F)eedrate"
      },
      {
        "Code": "G02",
        "Category": "Motion",
        "Function": "Clockwise circular arc at (F)eedrate"
      },
      {
        "Code": "G03",
        "Category": "Motion",
        "Function": "Counter-clockwise circular arc at (F)eedrate"
      },
      {
        "Code": "G01",
        "Category": "Motion",
        "Function":
            "Move in a straight line at last speed commanded by a (F)eedrate"
      },
      {
        "Code": "G02",
        "Category": "Motion",
        "Function": "Clockwise circular arc at (F)eedrate"
      },
      {
        "Code": "G03",
        "Category": "Motion",
        "Function": "Counter-clockwise circular arc at (F)eedrate"
      },
      {
        "Code": "G01",
        "Category": "Motion",
        "Function":
            "Move in a straight line at last speed commanded by a (F)eedrate"
      },
      {
        "Code": "G02",
        "Category": "Motion",
        "Function": "Clockwise circular arc at (F)eedrate"
      },
      {
        "Code": "G03",
        "Category": "Motion",
        "Function": "Counter-clockwise circular arc at (F)eedrate"
      },
      // Add more rows here
    ];

    // Define column widths (adjust percentage values as needed)
    final columnWidths = const {
      0: FlexColumnWidth(0.2), // 20% width for 'Code'
      1: FlexColumnWidth(0.3), // 30% width for 'Category'
      2: FlexColumnWidth(0.5), // 50% width for 'Function'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('G-Codes Milling'),
      ),
      body: Column(
        children: [
          // Frozen Header
          Container(
            color: Colors.blueGrey,
            child: Table(
              border: TableBorder.all(color: Colors.black, width: 1),
              columnWidths: columnWidths,
              children: [
                TableRow(
                  decoration: const BoxDecoration(color: Colors.blueGrey),
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Code',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Category',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Function',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Scrollable Body
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Table(
                border: TableBorder.all(color: Colors.black, width: 1),
                columnWidths:
                    columnWidths, // Apply same column widths as header
                children: gCodeData.map((item) {
                  return TableRow(
                    decoration: const BoxDecoration(color: Colors.white),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          item["Code"]!,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          item["Category"]!,
                          style: const TextStyle(
                            fontSize: 14,
                            fontStyle: FontStyle.italic,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          item["Function"]!,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
