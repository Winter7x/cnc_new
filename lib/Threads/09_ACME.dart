import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class AcmeThreadsScreen extends StatelessWidget {
  const AcmeThreadsScreen({super.key});

  final List<ThreadData> threadData = const [
    ThreadData(nominalSize: '1/4 ACME', majorDiameter: 0.250, pitch: 0.125),
    ThreadData(nominalSize: '1/2 ACME', majorDiameter: 0.500, pitch: 0.125),
    ThreadData(nominalSize: '3/4 ACME', majorDiameter: 0.750, pitch: 0.125),
    // Add more thread data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Acme Threads',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: DataTable2(
          columnSpacing: 12,
          horizontalMargin: 12,
          columns: const [
            DataColumn(
              label: Text(
                'Nominal Size',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            DataColumn(
              label: Text(
                'Major Diameter (Inch)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              numeric: true,
            ),
            DataColumn(
              label: Text(
                'Pitch (Inch)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              numeric: true,
            ),
          ],
          rows: threadData
              .map(
                (thread) => DataRow(cells: [
                  DataCell(Text(thread.nominalSize)),
                  DataCell(Text(thread.majorDiameter.toStringAsFixed(3))),
                  DataCell(Text(thread.pitch.toStringAsFixed(3))),
                ]),
              )
              .toList(),
        ),
      ),
    );
  }
}

class ThreadData {
  final String nominalSize;
  final double majorDiameter;
  final double pitch;

  const ThreadData({
    required this.nominalSize,
    required this.majorDiameter,
    required this.pitch,
  });
}
