import 'package:elearning/shared/colors.dart';
import 'package:elearning/shared/widgets.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../Home.dart';

/// Represents Homepage for Navigation
class PdfBook extends StatefulWidget {
  @override
  _PdfBook createState() => _PdfBook();
}

class _PdfBook extends State<PdfBook> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: MyWidgets.BtnToGo_Home(context),
        backgroundColor: MyColors.appBarColor,
        centerTitle: true,
        title: const Text('English e-Book'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
              semanticLabel: 'Bookmark',
            ),
            onPressed: () {
              _pdfViewerKey.currentState?.openBookmarkView();
            },
          ),
        ],
      ),
      body: SfPdfViewer.asset(
        'assets/book/learn.pdf',
        key: _pdfViewerKey,
        enableDoubleTapZooming: true,
        enableDocumentLinkAnnotation: true,
      ),
    );
  }
}
