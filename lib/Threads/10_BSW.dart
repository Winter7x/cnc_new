import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class BSWThreadsScreen extends StatelessWidget {
  const BSWThreadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle smallerTextStyle = TextStyle(fontSize: 10);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Whitworth Threads (BSW)'),
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
                  label: Text('Nominal\nSize\nWw',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Major\nDiameter\nmm\nd=D',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Pitch\nmm\np',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Threads\nper\ninch\ntpi',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Pitch\nDiameter\nmm\nd2=D2',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Minor\nDiameter\nMale\nThd.\nd3',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Thread\nHeight\nH1',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
                DataColumn2(
                  label: Text('Tap\nDrill\nDiameter\nmm',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10)),
                  fixedWidth: 55,
                ),
              ],
              rows: _buildDataRows(smallerTextStyle),
              headingRowColor:
                  MaterialStateColor.resolveWith((states) => Colors.grey[200]!),
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
      ["1/16\"", "1.587", "0.423", "60", "1.315", "1.05", "0.27", "1.15"],
      ["3/32\"", "2.381", "0.529", "48", "2.041", "1.703", "0.338", "1.9"],
      ["1/8\"", "3.175", "0.635", "40", "2.768", "2.362", "0.406", "2.5"],
      ["5/32\"", "3.969", "0.793", "32", "3.459", "2.952", "0.507", "3.2"],
      ["3/16\"", "4.762", "1.058", "24", "4.084", "3.407", "0.677", "3.7"],
      ["7/32\"", "5.556", "1.058", "24", "4.878", "4.201", "0.677", "4.5"],
      ["1/4\"", "6.35", "1.27", "20", "5.537", "4.724", "0.813", "5.1"],
      ["5/16\"", "7.938", "1.411", "18", "7.034", "6.131", "0.904", "6.5"],
      ["3/8\"", "9.525", "1.588", "16", "8.509", "7.492", "1.017", "7.9"],
      ["7/16\"", "11.113", "1.814", "14", "9.951", "8.789", "1.162", "9.2"],
      ["1/2\"", "12.7", "2.117", "12", "11.345", "9.99", "1.355", "10.4"],
      ["5/8\"", "15.876", "2.309", "11", "14.397", "12.918", "1.479", "13.4"],
      ["3/4\"", "19.051", "2.54", "10", "17.424", "15.798", "1.627", "16.25"],
      ["7/8\"", "22.226", "2.822", "9", "20.419", "18.611", "1.807", "19.25"],
      ["1\"", "25.4", "3.175", "8", "23.368", "21.335", "2.033", "22"],
      ["1-1/8\"", "28.576", "3.629", "7", "26.253", "23.929", "2.324", "24.5"],
      ["1-1/4\"", "31.751", "3.629", "7", "29.428", "27.104", "2.324", "27.25"],
      ["1-3/8\"", "34.926", "4.233", "6", "32.215", "29.505", "2.711", "30.25"],
      ["1-1/2\"", "38.1", "4.233", "6", "35.391", "32.68", "2.711", "33.5"],
      ["1-5/8\"", "41.277", "5.08", "5", "38.024", "34.771", "3.253", "35.5"],
      ["1-3/4\"", "44.452", "5.08", "5", "41.199", "37.946", "3.253", "38.5"],
      [
        "1-7/8\"",
        "47.627",
        "5.645",
        "4 1/2",
        "44.012",
        "40.398",
        "3.614",
        "41.25"
      ],
      ["2\"", "50.802", "5.645", "4 1/2", "47.187", "43.573", "3.614", "44.5"],
      ["2-1/4\"", "57.152", "6.35", "4", "53.086", "49.02", "4.066", "50"],
      ["2-1/2\"", "63.502", "6.35", "4", "59.436", "55.37", "4.066", "56"],
      [
        "2-3/4\"",
        "69.853",
        "7.257",
        "3 1/2",
        "65.205",
        "60.558",
        "4.647",
        "61.5"
      ],
      ["3\"", "76.203", "7.257", "3 1/2", "71.556", "66.909", "4.647", "68"],
      [
        "3-1/4\"",
        "82.553",
        "7.816",
        "3 1/4",
        "77.548",
        "72.544",
        "5.005",
        "73.75"
      ],
      [
        "3-1/2\"",
        "88.903",
        "7.816",
        "3 1/4",
        "83.899",
        "78.894",
        "5.005",
        "80"
      ],
      ["3-3/4\"", "95.254", "8.467", "3", "89.832", "84.41", "5.422", "85.5"],
      ["4\"", "101.604", "8.467", "3", "96.182", "90.76", "5.422", "92"],
      [
        "4-1/4\"",
        "107.954",
        "8.835",
        "2 7/8",
        "102.297",
        "96.639",
        "5.657",
        "98"
      ],
      [
        "4-1/2\"",
        "114.304",
        "8.835",
        "2 7/8",
        "108.647",
        "102.99",
        "5.657",
        "104.2"
      ],
      [
        "4-3/4\"",
        "120.665",
        "9.237",
        "2 3/4",
        "114.74",
        "108.625",
        "5.915",
        "110"
      ],
      [
        "5\"",
        "127.005",
        "9.237",
        "2 3/4",
        "121.09",
        "115.176",
        "5.915",
        "116.5"
      ],
      [
        "5-1/4\"",
        "133.355",
        "9.677",
        "2 5/8",
        "127.159",
        "120.963",
        "6.196",
        "122.5"
      ],
      [
        "5-1/2\"",
        "139.705",
        "9.677",
        "2 5/8",
        "133.509",
        "127.313",
        "6.196",
        "128.5"
      ],
      [
        "5-3/4\"",
        "146.055",
        "10.16",
        "2 1/2",
        "139.549",
        "133.043",
        "6.506",
        "134.5"
      ],
      ["6\"", "152.406", "10.16", "2 1/2", "145.9", "139.394", "6.506", "141"],
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
                        Text(value,
                            style: textStyle, textAlign: TextAlign.center)
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
    home: BSWThreadsScreen(),
  ));
}
