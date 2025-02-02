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
        "Code": "G04",
        "Category": "Motion",
        "Function": "Dwell: Stop for a specified time."
      },
      {"Code": "G09", "Category": "Motion", "Function": "Exact stop check"},
      {
        "Code": "G10",
        "Category": "Compensation",
        "Function": "Programmable parameter input"
      },
      {"Code": "G17", "Category": "Coordinate", "Function": "Select X-Y plane"},
      {"Code": "G18", "Category": "Coordinate", "Function": "Select X-Z plane"},
      {"Code": "G19", "Category": "Coordinate", "Function": "Select Y-Z plane"},
      {
        "Code": "G20",
        "Category": "Coordinate",
        "Function": "Program coordinates are inches"
      },
      {
        "Code": "G21",
        "Category": "Coordinate",
        "Function": "Program coordinates are mm"
      },
      {
        "Code": "G27",
        "Category": "Motion",
        "Function": "Reference point return check"
      },
      {
        "Code": "G28",
        "Category": "Motion",
        "Function": "Return to home position"
      },
      {
        "Code": "G29",
        "Category": "Motion",
        "Function": "Return from the reference position"
      },
      {
        "Code": "G30",
        "Category": "Motion",
        "Function": "Return to the 2nd, 3rd, and 4th reference point"
      },
      {
        "Code": "G32",
        "Category": "Canned",
        "Function":
            "Constant lead threading (like G01 synchronized with spindle)"
      },
      {
        "Code": "G40",
        "Category": "Compensation",
        "Function": "Tool cutter compensation off (radius comp.)"
      },
      {
        "Code": "G41",
        "Category": "Compensation",
        "Function": "Tool cutter compensation left (radius comp.)"
      },
      {
        "Code": "G42",
        "Category": "Compensation",
        "Function": "Tool cutter compensation right (radius comp.)"
      },
      {
        "Code": "G43",
        "Category": "Compensation",
        "Function": "Apply tool length compensation (plus)"
      },
      {
        "Code": "G44",
        "Category": "Compensation",
        "Function": "Apply tool length compensation (minus)"
      },
      {
        "Code": "G49",
        "Category": "Compensation",
        "Function": "Tool length compensation cancel"
      },
      {
        "Code": "G50",
        "Category": "Compensation",
        "Function": "Reset all scale factors to 1.0"
      },
      {
        "Code": "G51",
        "Category": "Compensation",
        "Function": "Turn on scale factors"
      },
      {
        "Code": "G52",
        "Category": "Coordinate",
        "Function":
            "Local workshift for all coordinate systems: add XYZ offsets"
      },
      {
        "Code": "G53",
        "Category": "Coordinate",
        "Function": "Machine coordinate system (cancel work offsets)"
      },
      {
        "Code": "G54",
        "Category": "Coordinate",
        "Function": "Work coordinate system (1st Workpiece)"
      },
      {
        "Code": "G55",
        "Category": "Coordinate",
        "Function": "Work coordinate system (2nd Workpiece)"
      },
      {
        "Code": "G56",
        "Category": "Coordinate",
        "Function": "Work coordinate system (3rd Workpiece)"
      },
      {
        "Code": "G57",
        "Category": "Coordinate",
        "Function": "Work coordinate system (4th Workpiece)"
      },
      {
        "Code": "G58",
        "Category": "Coordinate",
        "Function": "Work coordinate system (5th Workpiece)"
      },
      {
        "Code": "G59",
        "Category": "Coordinate",
        "Function": "Work coordinate system (6th Workpiece)"
      },
      {"Code": "G61", "Category": "Other", "Function": "Exact stop check mode"},
      {
        "Code": "G62",
        "Category": "Other",
        "Function": "Automatic corner override"
      },
      {"Code": "G63", "Category": "Other", "Function": "Tapping mode"},
      {"Code": "G64", "Category": "Other", "Function": "Best speed path"},
      {
        "Code": "G65",
        "Category": "Other",
        "Function": "Custom macro simple call"
      },
      {"Code": "G70", "Category": "Canned", "Function": "Finish Turning Cycle"},
      {"Code": "G71", "Category": "Canned", "Function": "Rough Turning Cycle"},
      {"Code": "G72", "Category": "Canned", "Function": "Rough Facing Cycle"},
      {
        "Code": "G73",
        "Category": "Canned",
        "Function": "Pattern Repeating Cycle"
      },
      {"Code": "G74", "Category": "Canned", "Function": "Peck Drilling Cycle"},
      {"Code": "G75", "Category": "Canned", "Function": "Grooving Cycle"},
      {"Code": "G76", "Category": "Canned", "Function": "Threading Cycle"},
      {"Code": "G80", "Category": "Canned", "Function": "Cancel canned cycle"},
      {"Code": "G83", "Category": "Canned", "Function": "Face drilling cycle"},
      {"Code": "G84", "Category": "Canned", "Function": "Face Tapping cycle"},
      {
        "Code": "G86",
        "Category": "Canned",
        "Function": "Boring canned cycle, spindle stop, rapid out"
      },
      {"Code": "G87", "Category": "Canned", "Function": "Side Drilling Cycle"},
      {"Code": "G88", "Category": "Canned", "Function": "Side Tapping Cycle"},
      {"Code": "G89", "Category": "Canned", "Function": "Side Boring Cycle"},
      {
        "Code": "G90",
        "Category": "Coordinate",
        "Function": "Absolute programming of XYZ (type B and C systems)"
      },
      {
        "Code": "G90.1",
        "Category": "Coordinate",
        "Function": "Absolute programming IJK (type B and C systems)"
      },
      {
        "Code": "G91",
        "Category": "Coordinate",
        "Function": "Incremental programming of XYZ (type B and C systems)"
      },
      {
        "Code": "G91.1",
        "Category": "Coordinate",
        "Function": "Incremental programming IJK (type B and C systems)"
      },
      {
        "Code": "G92",
        "Category": "Coordinate",
        "Function": "Thread Cutting Cycle"
      },
      {
        "Code": "G92 (alter)",
        "Category": "Motion",
        "Function": "Clamp of maximum spindle speed"
      },
      {
        "Code": "G94",
        "Category": "Motion",
        "Function": "Endface Turning Cycle"
      },
      {
        "Code": "G96",
        "Category": "Motion",
        "Function": "Constant Surface Speed ON"
      },
      {
        "Code": "G97",
        "Category": "Motion",
        "Function": "Constant Surface Speed Cancel"
      },
      {"Code": "G98", "Category": "Motion", "Function": "Feedrate per Minute"},
      {
        "Code": "G99",
        "Category": "Motion",
        "Function": "Feedrate per Revolution"
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
