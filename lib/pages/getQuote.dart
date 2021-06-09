import 'package:auto_size_text/auto_size_text.dart';
import 'package:boova_console/main.dart';
import 'package:boova_console/sharedpre.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GetQuote extends StatefulWidget {
  const GetQuote({Key? key}) : super(key: key);

  @override
  _GetQuoteState createState() => _GetQuoteState();
}

class _GetQuoteState extends State<GetQuote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          height: 400,
          padding: EdgeInsets.all(50),
          child: Row(
            children: [
              Container(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => MyApp()));
                          Indexvalue().addIntToSF('1');
                        });
                      },
                      child: AutoSizeText(
                        "Get a quote",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 24,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Indexvalue().addIntToSF('2');
                              print('*********************************');
                            });
                          },
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
