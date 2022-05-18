import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travellerpass/Screens/Constant/constants.dart';

class RegisterationScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double HEIGTH = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          height: HEIGTH,
          width: width,
          child:  SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: HEIGTH*0.05,),
                Container(
                  height: HEIGTH*0.13,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.purple, Colors.pinkAccent])
                  ),
                  child: Center(
                    child: ListTile(
                      trailing: Icon(
                        Icons.person_outline_sharp,
                        size: 50,
                        color: Colors.white,
                      ),
                      title: Text("REGISTER",style: GoogleFonts.lato(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      subtitle: Text(
                        "Please enter your email, \n password and number",style: GoogleFonts.lato(color: Colors.white),),
                    ),
                  ),
                ),
                SizedBox(height: HEIGTH*0.05,),
                Container(
                  height: 20,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already registerd?",style: GoogleFonts.lato(
                        color: Colors.grey,
                      ),),
                      FlatButton(
                        onPressed: (){
                          Navigator.pushNamed(context, "/signin");
                        },
                        child:Text("Login?",style: GoogleFonts.lato(
                        color: Colors.pink,
                        fontSize: 18
                      ),),)
                    ],
                  ),
                ),
                SizedBox(height: HEIGTH*0.05,),
                Container(
                  height: HEIGTH*0.3,
                  width: width,
                  child: AnimationLimiter(
                    child: ListView.builder(
                      itemCount: registerfield.length,
                      itemBuilder: (BuildContext context, int index) {
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          duration: const Duration(milliseconds: 375),
                          child: SlideAnimation(
                            duration: Duration(milliseconds: 1000),
                            verticalOffset: 50.0,
                            child: FadeInAnimation(
                              child: Card(
                                elevation:5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                    hintText: registerfield[index].hint,
                                    suffixIcon: Icon(
                                      registerfield[index].iconData,
                                      color: Colors.pink,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: BorderSide(
                                        color: Colors.white
                                      )
                                    )
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
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
                ),
                SizedBox(height: HEIGTH*0.15,),
                FlatButton(
                    onPressed: (){
                      Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
                    },
                    child: Text(
                      "NEXT",
                      style: GoogleFonts.lato(
                        color: Colors.pink,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),
                    )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
