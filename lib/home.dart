import 'package:dreamanella_app/scan_ticket.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Home_Screen_App.png'),
                      fit: BoxFit.cover),
                ),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 180),
                        Text('DreamTeam OutDoor WorkOut',
                            style: GoogleFonts.aBeeZee(
                              fontSize: 20,
                              color: const Color(0xFFD6A54A),
                            )),
                        const SizedBox(
                          height: 180,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.transparent)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ScanTicketPage()));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: const Color(0xFFD6A54A),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Text(
                                  'Lets Start the Adventure',
                                  style: GoogleFonts.aBeeZee(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                ))));
  }
}
