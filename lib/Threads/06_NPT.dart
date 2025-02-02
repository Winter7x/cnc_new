import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class NPTThreadsScreen extends StatelessWidget {
  const NPTThreadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle smallerTextStyle = TextStyle(fontSize: 10);

    return Scaffold(
      appBar: AppBar(
        title: const Text('BSF- British std fine'),
      ),
      body: Column(
        children: [
          Flexible(
            child: DataTable2(
              columnSpacing: 8,
              horizontalMargin: 4,
              minWidth: 600,
              border: TableBorder.all(
                color: Colors.grey,
                width: 0.8,
                style: BorderStyle.solid,
              ),
              columns: const [
                DataColumn2(
                  label: Text('Nominal\nSize\nISO M', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Major\nDiameter\nmm\nd=D', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Pitch\nmm\np', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Root\nRadius\nmm\nr', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Pitch\nDiameter\nmm\nd2=D2', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Minor\nDiameter\nMale\nThd.\nd3', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Minor\nDiameter\nFemale\nThd.\nD1', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Thread\nHeight\nMale\nThd.\nh3', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Thread\nHeight\nFemale\nThd.\nH1', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Tap\nDrill\nDiameter\nmm', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
              ],
              rows: _buildDataRows(smallerTextStyle),
              headingRowColor: MaterialStateColor.resolveWith((states) => Colors.grey[200]!),
              headingRowHeight: 80.0,
              dataRowHeight: 25.0, // Reduced row height
              showCheckboxColumn: false,
            ),
          ),
        ],
      ),
    );
  }

  List<DataRow> _buildDataRows(TextStyle textStyle) {
    const List<List<String>> data = [
      [
        "1",
        "1",
        "0.25",
        "0.036",
        "0.838",
        "0.693",
        "0.729",
        "0.153",
        "0.135",
        "0.75"
      ],
    ];

    return data.map((row) {
      return DataRow(
        cells: row
            .map((value) => DataCell(
                  Padding(
                    padding: const EdgeInsets.all(2), // Reduced padding
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        Text(value, style: textStyle, textAlign: TextAlign.center)
                      ],
                    ),
                  ),
                ))
            .toList(),
      );
    }).toList();
  }
}

void main() {
  runApp(MaterialApp(
    home: NPTThreadsScreen(),
  ));
}
