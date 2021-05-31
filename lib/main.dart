import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        elevation: 2,
        title: Container(
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    border: Border.all(width: 4, color: Colors.orange)),
                height: 65,
                width: 65,
                child: Image.asset(
                  'logo/logo1.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'boova',
                style: GoogleFonts.kaushanScript(
                    color: Colors.black, fontSize: 35),
              ),
              SizedBox(
                width: 380,
              ),
              HoverWidget(
                child: Text(
                  'Services',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.black, fontSize: 22),
                ),
                hoverChild: Text(
                  'Services',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.orange, fontSize: 22),
                ),
                onHover: (e) {},
              ),
              SizedBox(
                width: 20,
              ),
              HoverWidget(
                child: Text(
                  'Technology',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.black, fontSize: 22),
                ),
                hoverChild: Text(
                  'Technology',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.orange, fontSize: 22),
                ),
                onHover: (e) {},
              ),
              SizedBox(
                width: 20,
              ),
              HoverWidget(
                child: Text(
                  'Industries',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.black, fontSize: 22),
                ),
                hoverChild: Text(
                  'Industries',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.orange, fontSize: 22),
                ),
                onHover: (e) {},
              ),
              SizedBox(
                width: 20,
              ),
              HoverWidget(
                child: Text(
                  'About',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.black, fontSize: 22),
                ),
                hoverChild: Text(
                  'About',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.orange, fontSize: 22),
                ),
                onHover: (e) {},
              ),
              SizedBox(
                width: 20,
              ),
              HoverWidget(
                child: Text(
                  'Company',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.black, fontSize: 22),
                ),
                hoverChild: Text(
                  'Company',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.orange, fontSize: 22),
                ),
                onHover: (e) {},
              ),
              SizedBox(
                width: 20,
              ),
              HoverWidget(
                child: Text(
                  'blog',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.black, fontSize: 25),
                ),
                hoverChild: Text(
                  'blog',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.orange, fontSize: 25),
                ),
                onHover: (e) {},
              ),
              SizedBox(
                width: 60,
              ),
              HoverWidget(
                child: Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black),
                  child: Center(
                    child: Text(
                      'Get a Quote',
                      style: GoogleFonts.bebasNeue(
                          color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                hoverChild: Container(
                  height: 50,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue.shade400),
                  child: Center(
                    child: Text(
                      'Get a Quote',
                      style: GoogleFonts.bebasNeue(
                          color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
                onHover: (e) {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
