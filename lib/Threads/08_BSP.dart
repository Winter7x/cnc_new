import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class BSPThreadsScreen extends StatelessWidget {
  const BSPThreadsScreen({super.key});

  final List<ThreadData> threadData = const [
    ThreadData(nominalSize: '1/8 BSP', majorDiameter: 0.383, pitch: 0.048),
    ThreadData(nominalSize: '1/4 BSP', majorDiameter: 0.518, pitch: 0.087),
    ThreadData(nominalSize: '3/8 BSP', majorDiameter: 0.656, pitch: 0.087),
    // Add more thread data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'British Standard Pipe (BSP)',
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
