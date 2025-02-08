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
        "Function": "Move in a straight line at last speed commanded by a (F)eedrate"
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
        "Function": "Move in a straight line at last speed commanded by a (F)eedrate"
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

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'G-Codes Milling',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.teal,
                Colors.indigo
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color(0xFFE0F7FA)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            // Sticky Header
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.teal[800],
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 6,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: const Row(
                children: [
                  Expanded(
                    flex: 2,
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
                  Expanded(
                    flex: 3,
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
                  Expanded(
                    flex: 5,
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
            ),
            // Scrollable Body
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: gCodeData.length,
                separatorBuilder: (context, index) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final item = gCodeData[index];
                  return Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(12),
                      onTap: () {
                        // Add interaction logic here
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                item["Code"]!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Text(
                                item["Category"]!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.blueGrey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Text(
                                item["Function"]!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black87,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
