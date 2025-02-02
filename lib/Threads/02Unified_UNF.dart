import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class UnifiedUNFThreadsScreen extends StatelessWidget {
  const UnifiedUNFThreadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle smallerTextStyle = TextStyle(fontSize: 10);

    return Scaffold(
      appBar: AppBar(
        title: const Text('UNF'),
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
                  fixedWidth: 55,
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
        "#0-80",
        "0.06",
        "1.524",
        "1.25",
        "80",
        "0.317"
      ],
      [
        "#1-72",
        "0.073",
        "1.854",
        "1.55",
        "72",
        "0.353"
      ],
      [
        "#2-64",
        "0.086",
        "2.184",
        "1.9",
        "64",
        "0.397"
      ],
      [
        "#3-56",
        "0.099",
        "2.515",
        "2.15",
        "56",
        "0.453"
      ],
      [
        "#4-48",
        "0.112",
        "2.845",
        "2.4",
        "48",
        "0.529"
      ],
      [
        "#5-44",
        "0.125",
        "3.175",
        "2.7",
        "44",
        "0.577"
      ],
      [
        "#6-40",
        "0.138",
        "3.505",
        "2.95",
        "40",
        "0.635"
      ],
      [
        "#8-36",
        "0.164",
        "4.166",
        "3.5",
        "36",
        "0.705"
      ],
      [
        "#10-32",
        "0.19",
        "4.826",
        "4.1",
        "32",
        "0.794"
      ],
      [
        "#12-28",
        "0.216",
        "5.486",
        "4.7",
        "28",
        "0.907"
      ],
      [
        "1/4\"-28",
        "0.25",
        "6.35",
        "5.5",
        "28",
        "0.907"
      ],
      [
        "5/16\"-24",
        "0.3125",
        "7.938",
        "6.9",
        "24",
        "1.058"
      ],
      [
        "3/8\"-24",
        "0.375",
        "9.525",
        "8.5",
        "24",
        "1.058"
      ],
      [
        "7/16\"-20",
        "0.4375",
        "11.112",
        "9.9",
        "20",
        "1.27"
      ],
      [
        "1/2\"-20",
        "0.5",
        "12.7",
        "11.5",
        "20",
        "1.27"
      ],
      [
        "9/16\"-18",
        "0.5625",
        "14.288",
        "12.9",
        "18",
        "1.411"
      ],
      [
        "5/8\"-18",
        "0.625",
        "15.875",
        "14.5",
        "18",
        "1.411"
      ],
      [
        "3/4\"-16",
        "0.75",
        "19.05",
        "17.5",
        "16",
        "1.587"
      ],
      [
        "7/8\"-14",
        "0.875",
        "22.225",
        "20.4",
        "14",
        "1.814"
      ],
      [
        "1\"-12",
        "1",
        "25.4",
        "23.25",
        "12",
        "2.117"
      ],
      [
        "1-1/8\"-12",
        "1.125",
        "28.575",
        "26.5",
        "12",
        "2.117"
      ],
      [
        "1-1/4\"-12",
        "1.25",
        "31.75",
        "29.5",
        "12",
        "2.117"
      ],
      [
        "1-3/8\"-12",
        "1.375",
        "34.925",
        "32.75",
        "12",
        "2.117"
      ],
      [
        "1-1/2\"-12",
        "1.5",
        "38.1",
        "36",
        "12",
        "2.117"
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
    home: UnifiedUNFThreadsScreen(),
  ));
}
