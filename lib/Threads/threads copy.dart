import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class GTurning extends StatelessWidget {
  const GTurning({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the TextStyle for the reduced text size
    final TextStyle smallerTextStyle = TextStyle(fontSize: 12);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Applications'),
      ),
      body: Column(
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
                  label: Text('Code',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12)),
                  fixedWidth: 50, // Set fixed width for the Code column
                ),
                DataColumn2(
                  label: Text('Category',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12)),
                  fixedWidth: 90, // Set fixed width for the Category column
                ),
                DataColumn2(
                  label: Text('Function',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12)),
                  size: ColumnSize.L, // Set as large column for wrapping
                ),
              ],
              rows: _buildDataRows(
                  smallerTextStyle), // Reference to the dynamic data rows builder
              headingRowColor:
                  MaterialStateColor.resolveWith((states) => Colors.grey[200]!),
              headingRowHeight: 56.0,
              dataRowHeight: null, // Set to null to allow flexible height
              showCheckboxColumn: false,
            ),
          ),
        ],
      ),
    );
  }

  // Method to build data rows dynamically
  List<DataRow> _buildDataRows(TextStyle textStyle) {
    const List<Map<String, String>> data = [
      {
        "Code": "G00",
        "Category": "Motion",
        "Function": "Move in a straight line at rapids speed."
      },
    ];

    return data.map((row) {
      return DataRow(cells: [
        DataCell(Wrap(
          children: [Text(row['Code']!, style: textStyle)],
        )),
        DataCell(Wrap(
          children: [Text(row['Category']!, style: textStyle)],
        )),
        DataCell(Wrap(
          children: [Text(row['Function']!, style: textStyle)],
        )),
      ]);
    }).toList();
  }
}

void main() {
  runApp(MaterialApp(
    home: GTurning(),
  ));
}
