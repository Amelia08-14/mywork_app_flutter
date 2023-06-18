// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:dreamanella_app/result_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanTicketPage extends StatefulWidget {
  const ScanTicketPage({super.key});

  @override
  State<ScanTicketPage> createState() => _ScanTicketPageState();
}

class _ScanTicketPageState extends State<ScanTicketPage> {
  String result = " ";
  Future<void> scanQR() async {
    try {
      result = await FlutterBarcodeScanner.scanBarcode(
        "#0000ff",
        "Cancel",
        false,
        ScanMode.QR,
      );
    } catch (e) {
      print("ERROR");
    }
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ResultPage(scanResult: result)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Background.png'),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        const Icon(
                          Icons.qr_code_scanner_rounded,
                          size: 100,
                          color: Color(0xFFD6A54A),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        FloatingActionButton.large(
                          backgroundColor: const Color(0xFFD6A54A),
                          child: Text("Scan Me",
                              style: GoogleFonts.aBeeZee(color: Colors.black)),
                          onPressed: () => scanQR(),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}
