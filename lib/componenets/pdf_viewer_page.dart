import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PDFViewerPage extends StatefulWidget {
  const PDFViewerPage({super.key});

  @override
  State<PDFViewerPage> createState() => _PDFViewerPageState();
}

class _PDFViewerPageState extends State<PDFViewerPage> {
  late PdfViewerController _pdfViewerController;
  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SfPdfViewer.asset(
          'assets/documents/Raed-Alawfi-Resume.pdf',
          controller: _pdfViewerController,
        ),
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = 1.75;
              },
              icon: Icon(
                Icons.zoom_in,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                _pdfViewerController.zoomLevel = 1.0;
              },
              icon: Icon(
                Icons.zoom_out,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
