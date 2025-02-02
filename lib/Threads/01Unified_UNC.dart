import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class UnifiedUNCThreadsScreen extends StatelessWidget {
  const UnifiedUNCThreadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle smallerTextStyle = TextStyle(fontSize: 10);

    return Scaffold(
      appBar: AppBar(
        title: const Text('UNC'),
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
                  label: Text('Nominal\nDiameter', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  fixedWidth: 60,
                ),
                DataColumn2(
                  label: Text('Major\nDia Inch', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  fixedWidth: 60,
                ),
                DataColumn2(
                  label: Text('Major\nDia mm', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  fixedWidth: 60,
                ),
                DataColumn2(
                  label: Text('Tapping\nDrill Size\nmm', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  fixedWidth: 60,
                ),
                DataColumn2(
                  label: Text('TPI', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Pitch\nmm', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
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
        "#1 - 64",
        "0.073",
        "1.854",
        "1.5",
        "64",
        "0.397"
      ],
      [
        "#2 - 56",
        "0.086",
        "2.184",
        "1.8",
        "56",
        "0.453"
      ],
      [
        "#3 - 48",
        "0.099",
        "2.515",
        "2.1",
        "48",
        "0.529"
      ],
      [
        "#4 - 40",
        "0.112",
        "2.845",
        "2.35",
        "40",
        "0.635"
      ],
      [
        "#5 - 40",
        "0.125",
        "3.175",
        "2.65",
        "40",
        "0.635"
      ],
      [
        "#6 - 32",
        "0.138",
        "3.505",
        "2.85",
        "32",
        "0.794"
      ],
      [
        "#8 - 32",
        "0.164",
        "4.166",
        "3.5",
        "32",
        "0.794"
      ],
      [
        "#10 - 24",
        "0.19",
        "4.826",
        "4",
        "24",
        "1.058"
      ],
      [
        "#12 - 24",
        "0.216",
        "5.486",
        "4.65",
        "24",
        "1.058"
      ],
      [
        "1/4\" - 20",
        "0.25",
        "6.35",
        "5.35",
        "20",
        "1.27"
      ],
      [
        "5/16\" - 18",
        "0.3125",
        "7.938",
        "6.8",
        "18",
        "1.411"
      ],
      [
        "3/8\" - 16",
        "0.375",
        "9.525",
        "8.25",
        "16",
        "1.587"
      ],
      [
        "7/16\" - 14",
        "0.4375",
        "11.112",
        "9.65",
        "14",
        "1.814"
      ],
      [
        "1/2\" - 13",
        "0.5",
        "12.7",
        "11.15",
        "13",
        "1.954"
      ],
      [
        "9/16\" - 12",
        "0.5625",
        "14.288",
        "12.6",
        "12",
        "2.117"
      ],
      [
        "5/8\" - 11",
        "0.625",
        "15.875",
        "14.05",
        "11",
        "2.309"
      ],
      [
        "3/4\" - 10",
        "0.75",
        "19.05",
        "17",
        "10",
        "2.54"
      ],
      [
        "7/8\" - 9",
        "0.875",
        "22.225",
        "20",
        "9",
        "2.822"
      ],
      [
        "1\" - 8",
        "1",
        "25.4",
        "22.85",
        "8",
        "3.175"
      ],
      [
        "1-1/8\" - 7",
        "1.125",
        "28.575",
        "25.65",
        "7",
        "3.628"
      ],
      [
        "1-1/4\" - 7",
        "1.25",
        "31.75",
        "28.85",
        "7",
        "3.628"
      ],
      [
        "1-3/8\" - 6",
        "1.375",
        "34.925",
        "31.55",
        "6",
        "4.233"
      ],
      [
        "1-1/2\" - 6",
        "1.5",
        "38.1",
        "34.7",
        "6",
        "4.233"
      ],
      [
        "1-3/4\" - 5",
        "1.75",
        "44.45",
        "40.4",
        "5",
        "5.08"
      ],
      [
        "2\" - 4-1/2",
        "2",
        "50.8",
        "46.3",
        "4.5",
        "5.644"
      ],
      [
        "2-1/4\" - 4-1/2",
        "2.25",
        "57.15",
        "52.65",
        "4.5",
        "5.644"
      ],
      [
        "2-1/2\" - 4",
        "2.5",
        "63.5",
        "58.5",
        "4",
        "6.35"
      ],
      [
        "2-3/4\" - 4",
        "2.75",
        "69.85",
        "64.75",
        "4",
        "6.35"
      ],
      [
        "3\" - 4",
        "3",
        "76.2",
        "71.1",
        "4",
        "6.35"
      ],
      [
        "3-1/4\" - 4",
        "3.25",
        "82.55",
        "77.45",
        "4",
        "6.35"
      ],
      [
        "3-1/2\" - 4",
        "3.5",
        "88.9",
        "83.8",
        "4",
        "6.35"
      ],
      [
        "3-3/4\" - 4",
        "3.75",
        "95.25",
        "90.15",
        "4",
        "6.35"
      ],
      [
        "4\" - 4",
        "4",
        "101.6",
        "96.5",
        "4",
        "6.35"
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
    home: UnifiedUNCThreadsScreen(),
  ));
}
