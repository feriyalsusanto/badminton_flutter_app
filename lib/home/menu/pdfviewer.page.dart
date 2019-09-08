import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class PDFPageViewer extends StatefulWidget {
  final PDFDocument document;
  final String title;

  PDFPageViewer({this.document, this.title});

  @override
  _PDFPageViewerState createState() {
    return _PDFPageViewerState();
  }
}

class _PDFPageViewerState extends State<PDFPageViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PDFViewer(
        document: widget.document,
      ),
    );
  }
}
