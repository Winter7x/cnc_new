import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class NPTFThreadsScreen extends StatelessWidget {
  const NPTFThreadsScreen({super.key});

  final List<ThreadData> threadData = const [
    ThreadData(nominalSize: '1/8 NPTF', majorDiameter: 0.405, pitch: 0.125),
    ThreadData(nominalSize: '1/4 NPTF', majorDiameter: 0.540, pitch: 0.125),
    ThreadData(nominalSize: '3/8 NPTF', majorDiameter: 0.675, pitch: 0.125),
    // Add more thread data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'National Pipe Threads (NPTF)',
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
