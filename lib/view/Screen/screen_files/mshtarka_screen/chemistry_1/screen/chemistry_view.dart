import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:tageer/const/color.dart';
import 'package:url_launcher/url_launcher.dart';

class ChemistryView extends StatelessWidget {
  final String url;
  final String pathpdf;

  const ChemistryView({super.key, required this.url, required this.pathpdf});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            decoration: const BoxDecoration(color: Colors.white),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SfPdfViewer.asset(pathpdf)),
        Align(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(color.backgraound_splash),
                foregroundColor: MaterialStatePropertyAll(Colors.white)),
            onPressed: () {
              launchUrl(Uri.parse(url));
            },
            child: const Text('تحميل الملف'),
          ),
        )
      ]),
    );
  }
}
