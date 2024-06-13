import 'dart:math';
import 'package:flutter/material.dart';
import 'package:yourcareer/screens/exam.dart';
import 'package:advance_pdf_viewer2/advance_pdf_viewer.dart';

class TestInfo extends StatefulWidget {
  final Exam exam;

  TestInfo({required this.exam});

  @override
  State<StatefulWidget> createState() {
    return TestInfoState();
  }
}

class TestInfoState extends State<TestInfo> {
  final _random = Random();

  int getRandomValue(int max) {
    return _random.nextInt(max) + 1;
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.bodyText2 ?? TextStyle();

    return WillPopScope(
      onWillPop: () async {
        moveToLastPage();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          title: Text(
            'Test Info',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: moveToLastPage,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: <Widget>[
              _buildLogo(),
              _buildInfoItem(
                'Test:',
                widget.exam.testName,
                20,
                TextAlign.center,
                titleStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              _buildInfoItemWithLink('Description:', widget.exam.description,
                  'https://example.com/link'),
              _buildHeading('Test Details:'),
              _buildTestStatsItem(),
              _buildOpenPdfButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Center(
        child: Image.network(
          widget.exam.imageUrl,
          width: 100,
          height: 100,
          fit: BoxFit.contain,
        ),
      ),
    );
  }

  Widget _buildInfoItem(
      String title, String value, double fontSize, TextAlign textAlign,
      {TextStyle? titleStyle}) {
    titleStyle ??= TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold);
    TextStyle valueStyle = TextStyle(fontSize: fontSize);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title',
            style: titleStyle,
            textAlign: textAlign,
          ),
          Text(
            '$value',
            style: valueStyle,
            textAlign: textAlign,
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItemWithLink(String title, String value, String link) {
    TextStyle titleStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
    TextStyle linkStyle = TextStyle(fontSize: 16);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title',
            style: titleStyle,
          ),
          GestureDetector(
            onTap: () {
              // Handle link tap
            },
            child: Text(
              '$value',
              style: linkStyle,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeading(String heading) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: Text(
        heading,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }

  Widget _buildTestStatsItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildStatItem('Questions:', '${widget.exam.numberOfQuestions}'),
        _buildStatItem('Duration:', '${widget.exam.durationInMinutes} minutes'),
        _buildStatItem('Difficulty:', '${widget.exam.difficulty}'),
        _buildStatItem(
            'Exam Taking Frequency:', '${widget.exam.examTakingFrequency}'),
      ],
    );
  }

  Widget _buildStatItem(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 16, color: Colors.black),
          children: [
            TextSpan(
              text: '$title ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: value,
            ),
          ],
        ),
      ),
    );
  }

  void moveToLastPage() {
    Navigator.pop(context);
  }

  Widget _buildOpenPdfButton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: ElevatedButton(
        onPressed: () {
          // Add the code to open the PDF here
          openPdf();
        },
        child: Text('Read More'),
      ),
    );
  }

  void openPdf() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PdfViewerPage(
          pdfAsset: 'assets/${widget.exam.testName}1.pdf',
        ),
      ),
    );
  }
}

class PdfViewerPage extends StatefulWidget {
  final String pdfAsset;

  PdfViewerPage({required this.pdfAsset});

  @override
  _PdfViewerPageState createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {
  PDFDocument? document;

  @override
  void initState() {
    super.initState();
    loadDocument();
  }

  Future<void> loadDocument() async {
    try {
      document = await PDFDocument.fromAsset(widget.pdfAsset);
    } catch (e) {
      // Handle the exception if there's an issue loading the document
      print("Error loading PDF document: $e");
    }

    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Viewer'),
      ),
      body: Center(
        child: document == null
            ? CircularProgressIndicator()
            : PDFViewer(document: document!),
      ),
    );
  }
}
