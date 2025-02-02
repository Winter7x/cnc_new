import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class MetricCoarseThreadsScreen extends StatelessWidget {
  const MetricCoarseThreadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextStyle smallerTextStyle = TextStyle(fontSize: 10);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Metric thread Coarse'),
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
      [
        "1.1",
        "1.1",
        "0.25",
        "0.036",
        "0.938",
        "0.793",
        "0.829",
        "0.153",
        "0.135",
        "0.85"
      ],
      [
        "1.2",
        "1.2",
        "0.25",
        "0.036",
        "1.038",
        "0.893",
        "0.929",
        "0.153",
        "0.135",
        "0.95"
      ],
      [
        "1.4",
        "1.4",
        "0.3",
        "0.043",
        "1.205",
        "1.032",
        "1.075",
        "0.184",
        "0.162",
        "1.1"
      ],
      [
        "1.6",
        "1.6",
        "0.35",
        "0.051",
        "1.373",
        "1.171",
        "1.221",
        "0.215",
        "0.189",
        "1.25"
      ],
      [
        "1.8",
        "1.8",
        "0.35",
        "0.051",
        "1.573",
        "1.371",
        "1.421",
        "0.215",
        "0.189",
        "1.45"
      ],
      [
        "2",
        "2",
        "0.4",
        "0.058",
        "1.74",
        "1.509",
        "1.567",
        "0.245",
        "0.217",
        "1.6"
      ],
      [
        "2.2",
        "2.2",
        "0.45",
        "0.065",
        "1.908",
        "1.648",
        "1.713",
        "0.276",
        "0.244",
        "1.75"
      ],
      [
        "2.5",
        "2.5",
        "0.45",
        "0.065",
        "2.208",
        "1.948",
        "2.013",
        "0.276",
        "0.244",
        "2.05"
      ],
      [
        "3",
        "3",
        "0.5",
        "0.072",
        "2.675",
        "2.387",
        "2.459",
        "0.307",
        "0.271",
        "2.5"
      ],
      [
        "3.5",
        "3.5",
        "0.6",
        "0.087",
        "3.11",
        "2.764",
        "2.85",
        "0.368",
        "0.325",
        "2.9"
      ],
      [
        "4",
        "4",
        "0.7",
        "0.101",
        "3.545",
        "3.141",
        "3.242",
        "0.429",
        "0.379",
        "3.3"
      ],
      [
        "4.5",
        "4.5",
        "0.75",
        "0.108",
        "4.013",
        "3.58",
        "3.688",
        "0.46",
        "0.406",
        "3.8"
      ],
      [
        "5",
        "5",
        "0.8",
        "0.115",
        "4.48",
        "4.019",
        "4.134",
        "0.491",
        "0.433",
        "4.2"
      ],
      [
        "6",
        "6",
        "1",
        "0.144",
        "5.35",
        "4.773",
        "4.917",
        "0.613",
        "0.541",
        "5"
      ],
      [
        "7",
        "7",
        "1",
        "0.144",
        "6.35",
        "5.773",
        "5.917",
        "0.613",
        "0.541",
        "6"
      ],
      [
        "8",
        "8",
        "1.25",
        "0.18",
        "7.188",
        "6.466",
        "6.647",
        "0.767",
        "0.677",
        "6.8"
      ],
      [
        "9",
        "9",
        "1.25",
        "0.18",
        "8.188",
        "7.466",
        "7.647",
        "0.767",
        "0.677",
        "7.8"
      ],
      [
        "10",
        "10",
        "1.5",
        "0.217",
        "9.026",
        "8.16",
        "8.376",
        "0.92",
        "0.812",
        "8.5"
      ],
      [
        "11",
        "11",
        "1.5",
        "0.217",
        "10.026",
        "9.16",
        "9.376",
        "0.92",
        "0.812",
        "9.5"
      ],
      [
        "12",
        "12",
        "1.75",
        "0.253",
        "10.863",
        "9.853",
        "10.106",
        "1.074",
        "0.947",
        "10.2"
      ],
      [
        "14",
        "14",
        "2",
        "0.289",
        "12.701",
        "11.546",
        "11.835",
        "1.227",
        "1.083",
        "12"
      ],
      [
        "16",
        "16",
        "2",
        "0.289",
        "14.701",
        "13.546",
        "13.835",
        "1.227",
        "1.083",
        "14"
      ],
      [
        "18",
        "18",
        "2.5",
        "0.361",
        "16.376",
        "14.933",
        "15.394",
        "1.534",
        "1.353",
        "15.5"
      ],
      [
        "20",
        "20",
        "2.5",
        "0.361",
        "18.376",
        "16.933",
        "17.294",
        "1.534",
        "1.353",
        "17.5"
      ],
      [
        "22",
        "22",
        "2.5",
        "0.361",
        "20.376",
        "18.933",
        "19.294",
        "1.534",
        "1.353",
        "19.5"
      ],
      [
        "24",
        "24",
        "3",
        "0.433",
        "22.051",
        "20.319",
        "20.752",
        "1.84",
        "1.624",
        "21"
      ],
      [
        "27",
        "27",
        "3",
        "0.433",
        "25.051",
        "23.319",
        "23.752",
        "1.84",
        "1.624",
        "24"
      ],
      [
        "30",
        "30",
        "3.5",
        "0.505",
        "27.727",
        "25.706",
        "26.211",
        "2.147",
        "1.894",
        "26.5"
      ],
      [
        "33",
        "33",
        "3.5",
        "0.505",
        "30.727",
        "28.706",
        "29.211",
        "2.147",
        "1.894",
        "29.5"
      ],
      [
        "36",
        "36",
        "4",
        "0.577",
        "33.402",
        "31.093",
        "31.67",
        "2.454",
        "2.165",
        "32"
      ],
      [
        "39",
        "39",
        "4",
        "0.577",
        "36.402",
        "34.093",
        "34.67",
        "2.454",
        "2.165",
        "35"
      ],
      [
        "42",
        "42",
        "4.5",
        "0.65",
        "39.077",
        "36.479",
        "37.129",
        "2.76",
        "2.436",
        "37.5"
      ],
      [
        "45",
        "45",
        "4.5",
        "0.65",
        "42.077",
        "39.479",
        "40.129",
        "2.76",
        "2.436",
        "40.5"
      ],
      [
        "48",
        "48",
        "5",
        "0.722",
        "44.752",
        "41.866",
        "42.857",
        "3.067",
        "2.706",
        "43"
      ],
      [
        "52",
        "52",
        "5",
        "0.722",
        "48.752",
        "45.866",
        "46.587",
        "3.067",
        "2.706",
        "47"
      ],
      [
        "56",
        "56",
        "5.5",
        "0.794",
        "52.428",
        "49.252",
        "50.046",
        "3.374",
        "2.977",
        "50.5"
      ],
      [
        "60",
        "60",
        "5.5",
        "0.794",
        "56.428",
        "53.252",
        "54.046",
        "3.374",
        "2.977",
        "54.5"
      ],
      [
        "64",
        "64",
        "6",
        "0.866",
        "60.103",
        "56.639",
        "57.505",
        "3.681",
        "3.248",
        "58"
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
    home: MetricCoarseThreadsScreen(),
  ));
}
