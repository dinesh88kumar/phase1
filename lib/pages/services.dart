import 'package:auto_size_text/auto_size_text.dart';
import 'package:boova_console/main.dart';
import 'package:boova_console/sharedpre.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';
import 'package:video_player/video_player.dart';

class Services extends StatefulWidget {
//  Services({Key? key}) : super(key: key);

  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  /* late VideoPlayerController controller;
  late Future<void> initializeVideoplayerfuture;

  @override
  void initState() {
    controller = VideoPlayerController.asset('assets/videos/yellow.mp4');

    setState(() {
      //  controller = VideoPlayerController.network('https://vimeo.com/250692756');
      initializeVideoplayerfuture = controller.initialize();
      controller.play();
      controller.setVolume(0);
      controller.setLooping(true);
      super.initState();
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }*/
  ScrollController scrollController = ScrollController();
  final stops = [100.0, 10.0];
  double aniconheight = 50;
  animatedcon() {
    setState(() {
      aniconheight = aniconheight == 50 ? 60 : 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        controller: scrollController,
        children: [
          Container(
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  height: 330,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.indigo.shade200, BlendMode.hardLight),
                        image: NetworkImage(
                            'https://media.bizj.us/view/img/10943275/24th-at-camelback*1200xx2100-1181-0-100.jpg'),
                        fit: BoxFit.fitWidth),
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.blueAccent],
                      stops: stops,
                    ),
                  ),
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          child: AutoSizeText(
                            "Food delivery and more",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                letterSpacing: 1,
                                wordSpacing: 3,
                                fontSize: 40,
                                fontWeight: FontWeight.w600),
                            maxLines: 2,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedBuilder(
            animation: scrollController,
            builder: (context, child) => Container(
              //color: Colors.amber,
              height: 250,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 200,
                      width: size.width / 2.6,
                      // color: Colors.lightBlue,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 40),
                      child: AutoSizeText(
                        "Your share your idea.We get it done",
                        style: GoogleFonts.montserrat(
                            color: Colors.indigo,
                            letterSpacing: 1,
                            wordSpacing: 3,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                        maxLines: 2,
                      )),
                  Container(
                    height: 200,
                    width: size.width / 3,
                    padding: EdgeInsets.all(20),
                    child: AutoSizeText(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                      style: GoogleFonts.montserrat(
                        color: Colors.indigo,
                        fontSize: 15,
                      ),
                      maxLines: 8,
                    ),
                  )
                ],
              ),
            ),
          ),
          AnimatedContainer(
              curve: Curves.bounceIn,
              duration: Duration(seconds: 2),
              height: aniconheight,
              width: size.width / 10,
              padding: EdgeInsets.only(left: size.width / 10),
              child: AutoSizeText(
                "See what we can do for you",
                style: GoogleFonts.montserrat(
                    color: Colors.indigo,
                    letterSpacing: 1,
                    wordSpacing: 3,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
                maxLines: 2,
              )),
          SizedBox(
            height: 20,
          ),
          Container(
              padding: EdgeInsets.only(left: 100, right: 100),
              child: size.width > 860
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ServiceWhatwedo(),
                        ServiceWhatwedo(),
                        ServiceWhatwedo(),
                        ServiceWhatwedo(),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ServiceWhatwedo(),
                            ServiceWhatwedo(),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ServiceWhatwedo(),
                            ServiceWhatwedo(),
                          ],
                        ),
                      ],
                    )),
          SizedBox(
            height: 60,
          ),
          Container(
            height: 350,
            color: Colors.blue.shade50,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    child: AutoSizeText(
                      "Join us in making the world more connected",
                      style: GoogleFonts.montserrat(
                          color: Colors.black,
                          letterSpacing: 1,
                          wordSpacing: 3,
                          fontSize: 28,
                          fontWeight: FontWeight.w700),
                      maxLines: 2,
                    ),
                  ),
                  HoverWidget(
                    child: Container(
                      height: 50,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black),
                      child: Center(
                        child: Text(
                          'Connect with us',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 22),
                        ),
                      ),
                    ),
                    hoverChild: Container(
                      height: 50,
                      width: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff2e4dd0)),
                      child: Center(
                        child: Text(
                          'Connect with us',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 22),
                        ),
                      ),
                    ),
                    onHover: (e) {},
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 380,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 320,
                  width: size.width / 3.5,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://cdn.pixabay.com/photo/2016/11/08/05/25/steak-1807532_960_720.jpg',
                        fit: BoxFit.cover,
                      )),
                ),
                Container(
                    height: 300,
                    width: size.width / 2,
                    padding: EdgeInsets.only(top: 10),
                    child: AutoSizeText(
                      'Boova helps you find and order food from wherever you are. How it works: you type in an address, we tell you the restaurants that deliver to that locale as well as showing you droves of pickup restaurants near you. Want to be more specific? Search by cuisine, restaurant name or menu item. We will filter your results accordingly. When you find what you are looking for, you can place your order online or by phone, free of charge. Oh, and we also give you access to reviews, coupons, special deals and a 24/7 customer care team that tracks each order and makes sure you get exactly what you want',
                      maxLines: 14,
                      style: GoogleFonts.poppins(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                        wordSpacing: 1.5,
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 550,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  width: size.width / 2,
                  height: 550,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black45, BlendMode.hardLight),
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://th.bing.com/th/id/Rc4c87978b86d964292cd0599ebfbdfd0?rik=IwvY2O6d8C8KPg&riu=http%3a%2f%2fbraziliankeratin.com%2fmarcia-teixeira-keratin-treatment%2fwp-content%2fuploads%2f2016%2f02%2flady-eating-salad.jpg&ehk=bDATaPqOxeYGWBfytwyom84RN4nrW2tcLOqFzJ4tqhM%3d&risl=1&pid=ImgRaw'))),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.all(25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                "Putting",
                                style: GoogleFonts.raleway(
                                    color: Colors.white,
                                    fontSize: 30,
                                    letterSpacing: 3,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              AutoSizeText(
                                "customers first",
                                style: GoogleFonts.raleway(
                                    color: Colors.white,
                                    fontSize: 30,
                                    letterSpacing: 3,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: size.width / 5,
                                child: AutoSizeText(
                                  "Federal Bank creates an API banking system to better integrate with other organizations and ecosystems",
                                  style: GoogleFonts.raleway(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w400),
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: HoverWidget(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.indigo, width: 1)),
                              height: 120,
                              width: 200,
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.delivery_dining_sharp,
                                      color: Colors.indigo,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    AutoSizeText(
                                      "Food delivery",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      maxLines: 2,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            hoverChild: Container(
                              color: Colors.indigo,
                              height: 130,
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.delivery_dining_sharp,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  AutoSizeText(
                                    "Food delivery",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                    maxLines: 2,
                                  )
                                ],
                              ),
                            ),
                            onHover: (e) {}),
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width / 2,
                  height: 550,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black45, BlendMode.hardLight),
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://media.istockphoto.com/photos/girls-eating-aloo-chaat-street-food-picture-id1150886692?k=6&m=1150886692&s=612x612&w=0&h=BD0PtcszAptc6Fx3FjXvU5OvmPAv-eszQ2smNEw1-Sw='))),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          padding: EdgeInsets.all(25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                "Putting",
                                style: GoogleFonts.raleway(
                                    color: Colors.white,
                                    fontSize: 30,
                                    letterSpacing: 3,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              AutoSizeText(
                                "customers first",
                                style: GoogleFonts.raleway(
                                    color: Colors.white,
                                    fontSize: 30,
                                    letterSpacing: 3,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: size.width / 5,
                                child: AutoSizeText(
                                  "Federal Bank creates an API banking system to better integrate with other organizations and ecosystems",
                                  style: GoogleFonts.raleway(
                                      color: Colors.white,
                                      fontSize: 18,
                                      letterSpacing: 2,
                                      fontWeight: FontWeight.w400),
                                  maxLines: 3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: HoverWidget(
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.indigo, width: 1)),
                              height: 120,
                              width: 200,
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.delivery_dining_sharp,
                                      color: Colors.indigo,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    AutoSizeText(
                                      "Food delivery",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.indigo,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                      maxLines: 2,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            hoverChild: Container(
                              color: Colors.indigo,
                              height: 130,
                              width: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.delivery_dining_sharp,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  AutoSizeText(
                                    "Food delivery",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                    maxLines: 2,
                                  )
                                ],
                              ),
                            ),
                            onHover: (e) {}),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            height: 200,
            color: Colors.white,
            child: Center(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width / 2,
                  child: Center(
                    child: AutoSizeText(
                      "Food delivery",
                      style: GoogleFonts.montserrat(
                          color: Colors.indigo,
                          fontSize: 28,
                          fontWeight: FontWeight.w600),
                      maxLines: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width / 2,
                  child: AutoSizeText(
                    "Federal Bank creates an API banking system to better integrate with other organizations and ecosystems",
                    style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontSize: 24,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w500),
                    maxLines: 2,
                  ),
                ),
              ],
            )),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    //Colors.blue.shade600,
                    //Colors.blue.shade700,
                    Colors.blue.shade900,
                    Colors.black
                    //add more colors for gradient
                  ],
                  begin: Alignment.topLeft, //begin of the gradient color
                  end: Alignment.bottomRight, //end of the gradient color
                  stops: [0.2, 0.8] //stops for individual color
                  //set the stops number equal to numbers of color
                  ),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width / 1.5,
                    child: AutoSizeText(
                      "Federal Bank creates an API banking system to better integrate with other organizations and ecosystems @boovaLtd all rights reserved",
                      style: GoogleFonts.bebasNeue(
                          color: Colors.white70,
                          fontSize: 24,
                          letterSpacing: 2,
                          fontWeight: FontWeight.w400),
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                        Indexvalue().addIntToSF('3');
                      });
                    },
                    child: HoverWidget(
                      child: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey.shade200),
                        child: Center(
                          child: Text(
                            'About us',
                            style: GoogleFonts.bebasNeue(
                                color: Colors.indigo, fontSize: 25),
                          ),
                        ),
                      ),
                      hoverChild: Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black),
                        child: Center(
                          child: Text(
                            'About us',
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
          )
        ],
      ),
    );
  }
}

class ServiceWhatwedo extends StatelessWidget {
  const ServiceWhatwedo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HoverWidget(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.indigo, width: 0.15)),
          height: 120,
          width: 150,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.delivery_dining_sharp,
                  color: Colors.indigo,
                ),
                SizedBox(
                  height: 20,
                ),
                AutoSizeText(
                  "Food delivery",
                  style: GoogleFonts.montserrat(
                      color: Colors.indigo,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                  maxLines: 2,
                )
              ],
            ),
          ),
        ),
        hoverChild: Container(
          color: Colors.indigo,
          height: 130,
          width: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.delivery_dining_sharp,
                color: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              AutoSizeText(
                "Food delivery",
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                maxLines: 2,
              )
            ],
          ),
        ),
        onHover: (e) {});
  }
}
