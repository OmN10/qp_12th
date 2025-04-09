import 'package:flutter/material.dart';
import 'package:qp_12th/view/dd.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ShowPdf extends StatefulWidget {
  final String url;
  final String title;

  ShowPdf(this.url, this.title);

  @override
  State<ShowPdf> createState() => _ShowPdfState();
}

class _ShowPdfState extends State<ShowPdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Dd()));
            },
            icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Expanded(
            child: SfPdfViewer.network(widget.url),
          ),
        ],
      ),
    );
  }
}
