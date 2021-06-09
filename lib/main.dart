import 'package:boova_console/Responsive/responsive.dart';
import 'package:boova_console/pages/about.dart';
import 'package:boova_console/pages/blog.dart';
import 'package:boova_console/pages/company.dart';
import 'package:boova_console/pages/getQuote.dart';
import 'package:boova_console/pages/industries.dart';
import 'package:boova_console/pages/services.dart';
import 'package:boova_console/pages/tech.dart';
import 'package:boova_console/sharedpre.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    return Responsive(
        mobile: Mobile(),
        tab: TabWindow(),
        maxViewDesktop: Maxwindow(),
        minViewDesktop: MinWindow());
  }
}

int index = 0;
List<Widget> pages = [
  Services(),
  Tech(),
  Industry(),
  About(),
  Company(),
  Blog(),
  GetQuote()
];

class Maxwindow extends StatefulWidget {
  const Maxwindow({Key? key}) : super(key: key);

  @override
  _MaxwindowState createState() => _MaxwindowState();
}

class _MaxwindowState extends State<Maxwindow> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        elevation: 0,
        title: Container(
          child: Row(
            children: [
              SizedBox(
                width: size.width / 40,
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
                width: size.width / 8,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Indexvalue().addIntToSF('0');
                  });
                },
                child: HoverWidget(
                  child: Text(
                    'Home',
                    style: GoogleFonts.bebasNeue(
                        color: Colors.black, fontSize: 22),
                  ),
                  hoverChild: Text(
                    'Home',
                    style: GoogleFonts.bebasNeue(
                        color: Colors.orange, fontSize: 22),
                  ),
                  onHover: (e) {},
                ),
              ),
              SizedBox(
                width: size.width / 40,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Indexvalue().addIntToSF('1');
                  });
                },
                child: HoverWidget(
                  child: Text(
                    'Technology',
                    style: GoogleFonts.bebasNeue(
                        color: Colors.black, fontSize: 22),
                  ),
                  hoverChild: Text(
                    'Technology',
                    style: GoogleFonts.bebasNeue(
                        color: Colors.orange, fontSize: 22),
                  ),
                  onHover: (e) {},
                ),
              ),
              SizedBox(
                width: size.width / 40,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Indexvalue().addIntToSF('2');
                  });
                },
                child: HoverWidget(
                  child: Text(
                    'Industries',
                    style: GoogleFonts.bebasNeue(
                        color: Colors.black, fontSize: 22),
                  ),
                  hoverChild: Text(
                    'Industries',
                    style: GoogleFonts.bebasNeue(
                        color: Colors.orange, fontSize: 22),
                  ),
                  onHover: (e) {},
                ),
              ),
              SizedBox(
                width: size.width / 40,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Indexvalue().addIntToSF('3');
                  });
                },
                child: HoverWidget(
                  child: Text(
                    'About',
                    style: GoogleFonts.bebasNeue(
                        color: Colors.black, fontSize: 22),
                  ),
                  hoverChild: Text(
                    'About',
                    style: GoogleFonts.bebasNeue(
                        color: Colors.orange, fontSize: 22),
                  ),
                  onHover: (e) {},
                ),
              ),
              SizedBox(
                width: size.width / 40,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Indexvalue().addIntToSF('4');
                  });
                },
                child: HoverWidget(
                  child: Text(
                    'Company',
                    style: GoogleFonts.bebasNeue(
                        color: Colors.black, fontSize: 22),
                  ),
                  hoverChild: Text(
                    'Company',
                    style: GoogleFonts.bebasNeue(
                        color: Colors.orange, fontSize: 22),
                  ),
                  onHover: (e) {},
                ),
              ),
              SizedBox(
                width: size.width / 40,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Indexvalue().addIntToSF('5');
                  });
                },
                child: HoverWidget(
                  child: Text(
                    'blog',
                    style: GoogleFonts.bebasNeue(
                        color: Colors.black, fontSize: 25),
                  ),
                  hoverChild: Text(
                    'blog',
                    style: GoogleFonts.bebasNeue(
                        color: Colors.orange, fontSize: 25),
                  ),
                  onHover: (e) {},
                ),
              ),
              SizedBox(
                width: size.width / 40,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    Indexvalue().addIntToSF('6');
                  });
                },
                child: HoverWidget(
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
                ),
              )
            ],
          ),
        ),
      ),
      body: FutureBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return pages[int.parse(snapshot.data)];
          } else {
            return pages[index];
          }
        },
        future: Indexvalue().getStringValuesSF(),
      ),
    );
  }
}

class MinWindow extends StatefulWidget {
  const MinWindow({Key? key}) : super(key: key);

  @override
  _MinWindowState createState() => _MinWindowState();
}

class _MinWindowState extends State<MinWindow> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        elevation: 2,
        title: Container(
          child: Row(
            children: [
              SizedBox(
                width: size.width / 60,
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
                width: size.width / 15,
              ),
              HoverWidget(
                child: Text(
                  'Home',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.black, fontSize: 22),
                ),
                hoverChild: Text(
                  'Home',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.orange, fontSize: 22),
                ),
                onHover: (e) {},
              ),
              SizedBox(
                width: size.width / 45,
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
                width: size.width / 45,
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
                width: size.width / 45,
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
                width: size.width / 45,
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
                width: size.width / 45,
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
                width: size.width / 45,
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
      body: pages[index],
    );
  }
}

class TabWindow extends StatefulWidget {
  const TabWindow({Key? key}) : super(key: key);

  @override
  _TabWindowState createState() => _TabWindowState();
}

class _TabWindowState extends State<TabWindow> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        elevation: 2,
        title: Container(
          child: Row(
            children: [
              SizedBox(
                width: size.width / 80,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    border: Border.all(width: 4, color: Colors.orange)),
                height: 50,
                width: 50,
                child: Image.asset(
                  'logo/logo1.png',
                  fit: BoxFit.cover,
                ),
              ),
              size.width > 950
                  ? SizedBox(
                      width: 4,
                    )
                  : SizedBox(
                      width: 0,
                    ),
              size.width > 950
                  ? Text(
                      'boova',
                      style: GoogleFonts.kaushanScript(
                          color: Colors.black, fontSize: 30),
                    )
                  : Container(),
              SizedBox(
                width: size.width / 35,
              ),
              HoverWidget(
                child: Text(
                  'Home',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.black, fontSize: 20),
                ),
                hoverChild: Text(
                  'Home',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.orange, fontSize: 20),
                ),
                onHover: (e) {},
              ),
              SizedBox(
                width: size.width / 55,
              ),
              HoverWidget(
                child: Text(
                  'Technology',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.black, fontSize: 20),
                ),
                hoverChild: Text(
                  'Technology',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.orange, fontSize: 20),
                ),
                onHover: (e) {},
              ),
              SizedBox(
                width: size.width / 55,
              ),
              HoverWidget(
                child: Text(
                  'Industries',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.black, fontSize: 20),
                ),
                hoverChild: Text(
                  'Industries',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.orange, fontSize: 20),
                ),
                onHover: (e) {},
              ),
              SizedBox(
                width: size.width / 55,
              ),
              HoverWidget(
                child: Text(
                  'About',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.black, fontSize: 20),
                ),
                hoverChild: Text(
                  'About',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.orange, fontSize: 20),
                ),
                onHover: (e) {},
              ),
              SizedBox(
                width: size.width / 55,
              ),
              HoverWidget(
                child: Text(
                  'Company',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.black, fontSize: 20),
                ),
                hoverChild: Text(
                  'Company',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.orange, fontSize: 20),
                ),
                onHover: (e) {},
              ),
              SizedBox(
                width: size.width / 55,
              ),
              HoverWidget(
                child: Text(
                  'blog',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.black, fontSize: 20),
                ),
                hoverChild: Text(
                  'blog',
                  style:
                      GoogleFonts.bebasNeue(color: Colors.orange, fontSize: 20),
                ),
                onHover: (e) {},
              ),
              SizedBox(
                width: size.width / 50,
              ),
              size.width > 720
                  ? HoverWidget(
                      child: Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black),
                        child: Center(
                          child: Text(
                            'Get a Quote',
                            style: GoogleFonts.bebasNeue(
                                color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      hoverChild: Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue.shade400),
                        child: Center(
                          child: Text(
                            'Get a Quote',
                            style: GoogleFonts.bebasNeue(
                                color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      onHover: (e) {},
                    )
                  : Container(
                      child: Text(
                        'Get a Quote',
                        style: GoogleFonts.poppins(
                            color: Colors.orange, fontSize: 12),
                      ),
                    )
            ],
          ),
        ),
      ),
      body: pages[index],
    );
  }
}

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  bool close = true;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    setState(() {
      Navigator.of(context).pop();
      close = !close;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: IconButton(
            onPressed: () {
              setState(() {
                _openDrawer();
              });
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
      ),
      drawer: Mydrawer(
        ontap: (context, i) {
          setState(() {
            index = i;
            Navigator.pop(context);
          });
        },
      ),
    );
  }
}

class Mydrawer extends StatefulWidget {
  final Function ontap;
  Mydrawer({required this.ontap});
  @override
  _MydrawerState createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  bool close = true;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _closeDrawer() {
    setState(() {
      Navigator.of(context).pop();
      close = !close;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      key: _scaffoldKey,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  padding: EdgeInsets.only(left: size.width * 0.04, top: 15),
                  child: Image.asset('logo/logo1.png'),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _closeDrawer();
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(left: size.width * 0.08, top: 10),
                    child: Icon(
                      Icons.arrow_forward,
                      size: 28,
                      color: Color(0xffff5a1e),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 60),
            ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () => widget.ontap(context, 0)),
            ListTile(
                leading: Icon(Icons.play_arrow),
                title: Text("Technology"),
                onTap: () => widget.ontap(context, 1)),
            ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Industries"),
                onTap: () => widget.ontap(context, 2)),
            ListTile(
                leading: Icon(Icons.contacts),
                title: Text("About"),
                onTap: () => widget.ontap(context, 3)),
            ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Company"),
                onTap: () => widget.ontap(context, 4)),
            ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Blog"),
                onTap: () => widget.ontap(context, 5)),
            ListTile(
                leading: Icon(Icons.assignment),
                title: Text("Get a Quote"),
                onTap: () => widget.ontap(context, 6)),
          ],
        ),
      ),
    );
  }
}
