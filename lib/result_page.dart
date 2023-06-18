import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultPage extends StatefulWidget {
  final String scanResult;
  const ResultPage({Key? key, required this.scanResult}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
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
                children: [
                  Text(
                    'Welcome ${widget.scanResult}',
                    style: GoogleFonts.aBeeZee(
                        fontSize: 25, color: const Color(0xFFD6A54A)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
