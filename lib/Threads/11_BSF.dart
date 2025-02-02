import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class BSFThreadsScreen extends StatelessWidget {
  const BSFThreadsScreen({super.key});

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
                  label: Text('Nominal\nSize\nBSF', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
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
                  label: Text('Threads\nper\ninch\ntpi', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
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
                  label: Text('Thread\nHeight\nH1', textAlign: TextAlign.center, style: TextStyle(fontSize: 10)),
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
        "3/16\"",
        "4.763",
        "0.794",
        "32",
        "4.255",
        "3.747",
        "0.508",
        "4"
      ],
      [
        "7/32\"",
        "5.556",
        "0.907",
        "28",
        "4.975",
        "4.394",
        "0.581",
        "4.6"
      ],
      [
        "1/4\"",
        "6.35",
        "0.977",
        "26",
        "5.725",
        "5.1",
        "0.625",
        "5.3"
      ],
      [
        "9/32\"",
        "7.142",
        "0.977",
        "26",
        "6.518",
        "5.893",
        "0.625",
        "6.1"
      ],
      [
        "5/16\"",
        "7.938",
        "1.156",
        "22",
        "7.199",
        "6.459",
        "0.739",
        "6.8"
      ],
      [
        "3/8\"",
        "9.525",
        "1.27",
        "20",
        "8.712",
        "7.899",
        "0.813",
        "8.3"
      ],
      [
        "7/16\"",
        "11.113",
        "1.411",
        "18",
        "10.209",
        "9.304",
        "0.904",
        "9.7"
      ],
      [
        "1/2\"",
        "12.7",
        "1.588",
        "16",
        "11.684",
        "10.668",
        "1.017",
        "11.1"
      ],
      [
        "9/16\"",
        "14.288",
        "1.588",
        "16",
        "13.272",
        "12.256",
        "1.017",
        "12.7"
      ],
      [
        "5/8\"",
        "15.875",
        "1.814",
        "14",
        "14.712",
        "13.549",
        "1.162",
        "14"
      ],
      [
        "11/16\"",
        "17.463",
        "1.814",
        "14",
        "16.3",
        "15.137",
        "1.162",
        "15.5"
      ],
      [
        "3/4\"",
        "19.05",
        "2.117",
        "12",
        "17.693",
        "16.336",
        "1.355",
        "16.75"
      ],
      [
        "13/16\"",
        "20.638",
        "2.117",
        "12",
        "19.281",
        "17.924",
        "1.355",
        "18.25"
      ],
      [
        "7/8\"",
        "22.225",
        "2.309",
        "11",
        "20.747",
        "19.269",
        "1.479",
        "19.75"
      ],
      [
        "1\"",
        "25.4",
        "2.54",
        "10",
        "23.774",
        "22.148",
        "1.627",
        "22.75"
      ],
      [
        "1-1/8\"",
        "28.575",
        "2.822",
        "9",
        "26.769",
        "24.963",
        "1.807",
        "26.5"
      ],
      [
        "1-1/4\"",
        "31.75",
        "2.822",
        "9",
        "29.944",
        "28.138",
        "1.807",
        "28.75"
      ],
      [
        "1-3/8\"",
        "34.925",
        "3.175",
        "8",
        "32.893",
        "30.861",
        "2.033",
        "31.5"
      ],
      [
        "1-1/2\"",
        "38.1",
        "3.175",
        "8",
        "36.068",
        "34.036",
        "2.033",
        "34.5"
      ],
      [
        "1-5/8\"",
        "41.275",
        "3.175",
        "8",
        "39.243",
        "37.211",
        "2.033",
        "38"
      ],
      [
        "1-3/4\"",
        "44.45",
        "3.629",
        "7",
        "42.126",
        "39.802",
        "2.324",
        "40.5"
      ],
      [
        "2\"",
        "50.8",
        "3.629",
        "7",
        "48.476",
        "46.152",
        "2.324",
        "47"
      ],
      [
        "2-1/4\"",
        "57.15",
        "4.234",
        "6",
        "54.44",
        "51.73",
        "2.711",
        "53"
      ],
      [
        "2-1/2\"",
        "63.5",
        "4.234",
        "6",
        "60.79",
        "58.08",
        "2.711",
        "59"
      ],
      [
        "2-3/4\"",
        "69.85",
        "4.234",
        "6",
        "67.14",
        "64.43",
        "2.711",
        "n/a"
      ],
      [
        "3\"",
        "76.2",
        "5.08",
        "5",
        "72.946",
        "69.692",
        "3.253",
        "n/a"
      ],
      [
        "3-1/4\"",
        "82.55",
        "5.08",
        "5",
        "79.296",
        "76.042",
        "3.253",
        "n/a"
      ],
      [
        "3-1/2\"",
        "88.9",
        "5.645",
        "4 1/2",
        "85.285",
        "81.67",
        "3.614",
        "n/a"
      ],
      [
        "3-3/4\"",
        "95.25",
        "5.645",
        "4 1/2",
        "91.635",
        "88.02",
        "3.614",
        "n/a"
      ],
      [
        "4\"",
        "101.6",
        "5.645",
        "4 1/2",
        "97.985",
        "94.37",
        "3.614",
        "n/a"
      ],
      [
        "4-1/4\"",
        "107.95",
        "6.35",
        "4",
        "103.886",
        "99.822",
        "4.066",
        "n/a"
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
    home: BSFThreadsScreen(),
  ));
}
