import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class Mturning extends StatelessWidget {
  Mturning({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the TextStyle for the reduced text size
    final TextStyle smallerTextStyle = TextStyle(fontSize: 12);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'M Code Turning',
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
            Flexible(
              child: DataTable2(
                columnSpacing: 10, // Reduced spacing between columns
                horizontalMargin: 12,
                minWidth: 250,
                border: TableBorder.all(
                  color: Colors.grey,
                  width: 1,
                  style: BorderStyle.solid,
                ), // Add borders to all cells
                columns: const [
                  DataColumn2(
                    label: Text('Code', textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                    fixedWidth: 50, // Set fixed width for the Code column
                  ),
                  DataColumn2(
                    label: Text('Category', textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                    fixedWidth: 100, // Set fixed width for the Category column
                  ),
                  DataColumn2(
                    label: Text('Function', textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                    size: ColumnSize.L, // Set as large column for wrapping
                  ),
                ],
                rows: _buildDataRows(smallerTextStyle), // Reference to the dynamic data rows builder
                headingRowColor: MaterialStateColor.resolveWith((states) => Colors.grey[200]!),
                headingRowHeight: 56.0,
                dataRowHeight: 40, // Set to null to allow flexible height
                showCheckboxColumn: false,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Method to build data rows dynamically
  List<DataRow> _buildDataRows(TextStyle textStyle) {
    const List<Map<String, String>> data = [
      {
        "Code": "M00",
        "Category": "Miscellaneous",
        "Function": "Program Stop"
      },
      {
        "Code": "M01",
        "Category": "Miscellaneous",
        "Function": "Optional Program Stop"
      },
      {
        "Code": "M02",
        "Category": "Miscellaneous",
        "Function": "End of Program"
      },
      {
        "Code": "M03",
        "Category": "Spindle Control",
        "Function": "Spindle ON (Clockwise Rotation)"
      },
      {
        "Code": "M04",
        "Category": "Spindle Control",
        "Function": "Spindle ON (Counterclockwise Rotation)"
      },
      {
        "Code": "M05",
        "Category": "Spindle Control",
        "Function": "Spindle Stop"
      },
      {
        "Code": "M06",
        "Category": "Tool Change",
        "Function": "Tool Change"
      },
      {
        "Code": "M08",
        "Category": "Coolant Control",
        "Function": "Coolant ON (Flood or Mist)"
      },
      {
        "Code": "M09",
        "Category": "Coolant Control",
        "Function": "Coolant OFF"
      },
      {
        "Code": "M10",
        "Category": "Clamping Control",
        "Function": "Workpiece Clamping ON (Optional)"
      },
      {
        "Code": "M11",
        "Category": "Clamping Control",
        "Function": "Workpiece Clamping OFF (Optional)"
      },
      {
        "Code": "M30",
        "Category": "Miscellaneous",
        "Function": "End of Program and Reset to Start"
      },
      {
        "Code": "M41",
        "Category": "Gear Selection",
        "Function": "Select Gear (for machines with multiple speeds)"
      },
      {
        "Code": "M42",
        "Category": "Gear Selection",
        "Function": "Gear OFF"
      },
      {
        "Code": "M48",
        "Category": "Miscellaneous",
        "Function": "Enable Automatic Tool Change"
      },
      {
        "Code": "M49",
        "Category": "Miscellaneous",
        "Function": "Disable Automatic Tool Change"
      },
      {
        "Code": "M50",
        "Category": "Miscellaneous",
        "Function": "Stop Program for Manual Operation"
      },
      {
        "Code": "M51",
        "Category": "Miscellaneous",
        "Function": "Program Restart (from the current block)"
      },
      {
        "Code": "M52",
        "Category": "Miscellaneous",
        "Function": "Activate Chip Conveyor (if applicable)"
      },
      {
        "Code": "M53",
        "Category": "Miscellaneous",
        "Function": "Deactivate Chip Conveyor (if applicable)"
      },
      {
        "Code": "M60",
        "Category": "Miscellaneous",
        "Function": "Automatic Pallet Change (for multi-pallet machines)"
      }
    ];

    return data.map((row) {
      return DataRow(
        color: MaterialStateColor.resolveWith((states) {
          // Alternate row colors for better readability
          final index = data.indexOf(row);
          return index % 2 == 0 ? Colors.grey[100]! : Colors.white;
        }),
        cells: [
          DataCell(Wrap(
            children: [
              Text(row['Code']!, style: textStyle)
            ],
          )),
          DataCell(Wrap(
            children: [
              Text(row['Category']!, style: textStyle)
            ],
          )),
          DataCell(Wrap(
            children: [
              Text(row['Function']!, style: textStyle)
            ],
          )),
        ],
      );
    }).toList();
  }
}

void main() {
  runApp(MaterialApp(
    home: Mturning(),
  ));
}
