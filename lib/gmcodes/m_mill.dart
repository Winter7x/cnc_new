import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class Mmilling extends StatelessWidget {
  const Mmilling({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the TextStyle for the reduced text size
    final TextStyle smallerTextStyle = TextStyle(fontSize: 12);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'M code Milling',
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
                    fixedWidth: 90, // Set fixed width for the Category column
                  ),
                  DataColumn2(
                    label: Text('Function', textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
                    size: ColumnSize.L, // Set as large column for wrapping
                  ),
                ],
                rows: _buildDataRows(smallerTextStyle), // Reference to the dynamic data rows builder
                headingRowColor: MaterialStateColor.resolveWith((states) => Colors.grey[200]!),
                headingRowHeight: 56.0,
                dataRowHeight: null, // Set to null to allow flexible height
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
        "Category": "M-Code",
        "Function": "Program Stop (non-optional)"
      },
      {
        "Code": "M01",
        "Category": "M-Code",
        "Function": "Optional Stop: Operator Selected to Enable"
      },
      {
        "Code": "M02",
        "Category": "M-Code",
        "Function": "End of Program"
      },
      {
        "Code": "M03",
        "Category": "M-Code",
        "Function": "Spindle ON (CW Rotation)"
      },
      {
        "Code": "M04",
        "Category": "M-Code",
        "Function": "Spindle ON (CCW Rotation)"
      },
      {
        "Code": "M05",
        "Category": "M-Code",
        "Function": "Spindle Stop"
      },
      {
        "Code": "M06",
        "Category": "M-Code",
        "Function": "Tool Change"
      },
      {
        "Code": "M07",
        "Category": "M-Code",
        "Function": "Mist Coolant ON"
      },
      {
        "Code": "M08",
        "Category": "M-Code",
        "Function": "Flood Coolant ON"
      },
      {
        "Code": "M09",
        "Category": "M-Code",
        "Function": "Coolant OFF"
      },
      {
        "Code": "M17",
        "Category": "M-Code",
        "Function": "FADAL subroutine return"
      },
      {
        "Code": "M29",
        "Category": "M-Code",
        "Function": "Rigid Tapping Mode on Fanuc Controls"
      },
      {
        "Code": "M30",
        "Category": "M-Code",
        "Function": "End of Program, Rewind and Reset Modes"
      },
      {
        "Code": "M97",
        "Category": "M-Code",
        "Function": "Haas-Style Subprogram Call"
      },
      {
        "Code": "M98",
        "Category": "M-Code",
        "Function": "Subprogram Call"
      },
      {
        "Code": "M99",
        "Category": "M-Code",
        "Function": "Return from Subprogram"
      },
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
    home: Mmilling(),
  ));
}
