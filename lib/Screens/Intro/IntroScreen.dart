import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travellerpass/Screens/Constant/constants.dart';

class IntroScreen extends StatefulWidget {

  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  int _swiperIndex=5;
  @override
  Widget build(BuildContext context) {
    double HEIGTH = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          height: HEIGTH,
          width: width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: HEIGTH*0.1,
              ),
              Card(
                elevation: 0,
                child: Container(
                  height: HEIGTH*0.6,
                  width: width*0.85,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        offers[index],
                        fit: BoxFit.fill
                      );
                    },

                    index: _swiperIndex,
                    itemCount: offers.length,
                    itemWidth: 300.0,
                    itemHeight: 400.0,
                    layout: SwiperLayout.TINDER,
                    loop: false,
                  ),
                ),
              ),
              SizedBox(
                height: HEIGTH*0.05,
              ),
              SizedBox(
                width: width,
                height: HEIGTH*0.15,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                        onPressed: (){
                          Navigator.pushNamed(context, "/register");
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Skip tour &",
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 14,
                                letterSpacing: 2,
                              ),
                            ),
                            Text(
                              "REGISTER",
                              style: GoogleFonts.lato(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        )
                    ),
                    SizedBox(height: 10,),
                    FlatButton(
                        onPressed: (){},
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset("asset/ic_chat_select.png"),
                            ),
                            Text(
                              "Need help?",
                              style: GoogleFonts.lato(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        )
                    )
                  ],
                ) ,
              )
            ],
          ),
        ),
      ),
    );
  }
}
