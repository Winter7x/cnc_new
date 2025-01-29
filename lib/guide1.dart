import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Guide1 extends StatelessWidget {
  final String pdfPath;

  const Guide1({super.key, required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Viewer'),
      ),
      body: SfPdfViewer.asset(
        pdfPath, // Use the dynamic path passed to the widget
      ),
    );
  }
}
