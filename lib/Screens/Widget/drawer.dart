import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double HEIGTH = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return SafeArea(
      child: Drawer(
        child: Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: HEIGTH*0.05,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: HEIGTH*0.1,
                        width: width*0.1,
                        child: Image.asset("asset/ic_united.png",fit: BoxFit.contain,)
                    ),
                    SizedBox(width: width*0.05,),
                    Text(
                        "Happy United club",
                        style: GoogleFonts.lato(
                          color: Colors.white,
                        )
                    )
                  ],
                ),
              ),
              SizedBox(height: HEIGTH*0.05,),
              FlatButton(
                onPressed: (){

                },
                child: Row(
                  children: [
                    Container(
                        height:HEIGTH*0.04,
                        child: Image.asset("asset/ic_history_menu.png",fit: BoxFit.cover,)
                    ),
                    SizedBox(width: width*0.03,),
                    Text(
                      "Home",
                      style: GoogleFonts.lato(
                        color: Colors.black87
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 7,),
              FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, "/profile");
                },
                child: Row(
                  children: [
                    Container(
                        height:HEIGTH*0.04,
                        child: Image.asset("asset/ic_my_profile.png",fit: BoxFit.cover,)
                    ),
                    SizedBox(width: width*0.03,),
                    Text(
                      "My profile",
                      style: GoogleFonts.lato(
                          color: Colors.black87
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 7,),
              FlatButton(
                onPressed: (){

                },
                child: Row(
                  children: [
                    Container(
                        height:HEIGTH*0.04,
                        child: Image.asset("asset/ic_history_menu.png",fit: BoxFit.cover,)
                    ),
                    SizedBox(width: width*0.03,),
                    Text(
                      "Redemption history",
                      style: GoogleFonts.lato(
                          color: Colors.black87
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 7,),
              FlatButton(
                onPressed: (){

                },
                child: Row(
                  children: [
                    Container(
                        height:HEIGTH*0.04,
                        child: Image.asset("asset/ic_favourite_menu.png",fit: BoxFit.cover,)
                    ),
                    SizedBox(width: width*0.03,),
                    Text(
                      "My favourite",
                      style: GoogleFonts.lato(
                          color: Colors.black87
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 7,),
              FlatButton(
                onPressed: (){

                },
                child: Row(
                  children: [
                    Container(
                        height:HEIGTH*0.04,
                        child: Image.asset("asset/ic_recommend.png",fit: BoxFit.cover,)
                    ),
                    SizedBox(width: width*0.03,),
                    Text(
                      "Recommend an outlet",
                      style: GoogleFonts.lato(
                          color: Colors.black87
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 7,),
              FlatButton(
                onPressed: (){
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "/membership");
                },
                child: Row(
                  children: [
                    Container(
                        height:HEIGTH*0.04,
                        child: Image.asset("asset/ic_membership_menu.png",fit: BoxFit.cover,)
                    ),
                    SizedBox(width: width*0.03,),
                    Text(
                      "Buy membership",
                      style: GoogleFonts.lato(
                          color: Colors.black87
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 7,),
              FlatButton(
                onPressed: (){

                },
                child: Row(
                  children: [
                    Container(
                        height:HEIGTH*0.04,
                        child: Image.asset("asset/ic_how_work_menu.png",fit: BoxFit.cover,)
                    ),
                    SizedBox(width: width*0.03,),
                    Text(
                      "How it works",
                      style: GoogleFonts.lato(
                          color: Colors.black87
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 7,),
              FlatButton(
                onPressed: (){

                },
                child: Row(
                  children: [
                    Container(
                        height:HEIGTH*0.04,
                        child: Image.asset("asset/ic_terms_menu.png",fit: BoxFit.cover,)
                    ),
                    SizedBox(width: width*0.03,),
                    Text(
                      "Terms and condition",
                      style: GoogleFonts.lato(
                          color: Colors.black87
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 7,),
              FlatButton(
                onPressed: (){

                },
                child: Row(
                  children: [
                    Container(
                        height:HEIGTH*0.04,
                        child: Image.asset("asset/ic_help_menu.png",fit: BoxFit.cover,)
                    ),
                    SizedBox(width: width*0.03,),
                    Text(
                      "Need help",
                      style: GoogleFonts.lato(
                          color: Colors.black87
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){

                    },
                    child: Card(
                      child: Container(
                        height: HEIGTH*0.09,
                        width: width*0.3,
                        child: Image.asset("asset/ic_chkout_deeplink.png",fit: BoxFit.fill,),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
