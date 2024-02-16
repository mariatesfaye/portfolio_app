import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PdfViewerScreen extends StatelessWidget {
  final String pdfAsset;

  PdfViewerScreen({required this.pdfAsset});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume'),
      ),
      body: PDFView(
        filePath: 'assets/$pdfAsset',
      ),
    );
  }
}
