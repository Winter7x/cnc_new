import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class UnifiedUNEFThreadsScreen extends StatelessWidget {
  const UnifiedUNEFThreadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle smallerTextStyle = TextStyle(fontSize: 10);

    return Scaffold(
      appBar: AppBar(
        title: const Text('UNEF'),
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
                  label: Center(
                    child: Text('Nominal\nDiameter', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  ),
                  fixedWidth: 70,
                ),
                DataColumn2(
                  label: Center(
                    child: Text('Major\nDiameter\nInch', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  ),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Center(
                    child: Text('Major\nDiameter\nmm', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  ),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Center(
                    child: Text('Tapping\nDrill\nSize mm', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  ),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Center(
                    child: Text('TPI', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  ),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Center(
                    child: Text('Pitch\nmm', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  ),
                  fixedWidth: 55,
                ),
              ],
              rows: _buildDataRows(smallerTextStyle),
              headingRowColor: MaterialStateColor.resolveWith((states) => Colors.grey[200]!),
              headingRowHeight: 90.0,
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
        "#12-32",
        "0.216",
        "5.486",
        "4.8",
        "32",
        "0.794"
      ],
      [
        "1/4\"-32",
        "0.25",
        "6.35",
        "5.7",
        "32",
        "0.794"
      ],
      [
        "5/16\"-32",
        "0.3125",
        "7.938",
        "7.25",
        "32",
        "0.794"
      ],
      [
        "3/8\"-32",
        "0.375",
        "9.525",
        "8.85",
        "32",
        "0.794"
      ],
      [
        "7/16\"-28",
        "0.4375",
        "11.112",
        "10.35",
        "28",
        "0.907"
      ],
      [
        "1/2\"-28",
        "0.5",
        "12.7",
        "11.8",
        "28",
        "0.907"
      ],
      [
        "9/16\"-24",
        "0.5625",
        "14.288",
        "13.4",
        "24",
        "1.058"
      ],
      [
        "5/8\"-24",
        "0.625",
        "15.875",
        "15",
        "24",
        "1.058"
      ],
      [
        "11/16\"-24",
        "0.6875",
        "17.462",
        "16.6",
        "24",
        "1.058"
      ],
      [
        "3/4\"-20",
        "0.75",
        "19.05",
        "18",
        "20",
        "1.27"
      ],
      [
        "13/16\"-20",
        "0.8125",
        "20.638",
        "19.6",
        "20",
        "1.27"
      ],
      [
        "7/8\"-20",
        "0.875",
        "22.225",
        "21.15",
        "20",
        "1.27"
      ],
      [
        "15/16\"-20",
        "0.9375",
        "23.812",
        "22.7",
        "20",
        "1.27"
      ],
      [
        "1\"-20",
        "1",
        "25.4",
        "24.3",
        "20",
        "1.27"
      ],
      [
        "1-1/16\"-18",
        "1.0625",
        "26.988",
        "25.8",
        "18",
        "1.411"
      ],
      [
        "1-1/8\"-18",
        "1.125",
        "28.575",
        "27.35",
        "18",
        "1.411"
      ],
      [
        "1-1/4\"-18",
        "1.25",
        "31.75",
        "30.55",
        "18",
        "1.411"
      ],
      [
        "1-5/16\"-18",
        "1.3125",
        "33.338",
        "32.1",
        "18",
        "1.411"
      ],
      [
        "1-3/8\"-18",
        "1.375",
        "34.925",
        "33.7",
        "18",
        "1.411"
      ],
      [
        "1-7/16\"-18",
        "1.4375",
        "36.512",
        "35.3",
        "18",
        "1.411"
      ],
      [
        "1-1/2\"-18",
        "1.5",
        "38.1",
        "36.9",
        "18",
        "1.411"
      ],
      [
        "1-9/16\"-18",
        "1.5625",
        "39.688",
        "38.55",
        "18",
        "1.411"
      ],
      [
        "1-5/8\"-18",
        "1.625",
        "41.275",
        "40.1",
        "18",
        "1.411"
      ],
      [
        "1-11/16\"-18",
        "1.6875",
        "42.862",
        "41.6",
        "18",
        "1.411"
      ]
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
    home: UnifiedUNEFThreadsScreen(),
  ));
}
