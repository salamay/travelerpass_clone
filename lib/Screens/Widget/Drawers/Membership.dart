import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:google_fonts/google_fonts.dart';
class Membership extends StatelessWidget {
  final _scafoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double HEIGTH = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scafoldKey,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Row(
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: HEIGTH*0.05,),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.deepPurple,
                        Colors.redAccent
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight
                    )
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(
                          "BUY",
                          style: GoogleFonts.lato(
                            color: Colors.white,
                            fontSize: 25
                          ),
                        ),
                        subtitle: Text(
                          "MEMBERSHIP",
                          style: GoogleFonts.lato(
                              color: Colors.white,
                              fontSize: 25
                          ),
                        ),
                        trailing: Icon(
                          Icons.add_shopping_cart,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: HEIGTH*0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  getType(Icons.rice_bowl_sharp, "UNLIMITED","REDEMPTION", HEIGTH*0.2, width*0.3, Colors.pinkAccent),
                  SizedBox(width: 8,),
                  getType(Icons.rice_bowl_sharp, "NEW","EXPERIENCE", HEIGTH*0.2, width*0.3, Colors.pinkAccent),
                  SizedBox(width: 8,),
                  getType(Icons.rice_bowl_sharp, "UNLIMITED","SAVINGS", HEIGTH*0.2, width*0.3, Colors.pinkAccent)
                ],
              ),
              SizedBox(
                height: HEIGTH*0.02,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Live laugh and enjoy lives as it takes you on its roller coaster ride.With United membership you can get us along on your journey of life to get incredible discount across UAE",
                  style: GoogleFonts.lato(
                    color: Colors.black54,
                    fontSize: 10
                  ),
                ),
              ),
              SizedBox(
                height: HEIGTH*0.02,
              ),
              Container(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          typeBox("asset/hotelmain.jpg", "DINNING OFFERS", "21 cousins offer, discount up to 20%", HEIGTH*0.3, width*0.4),
                          SizedBox(
                            width: width*0.04,
                          ),
                          typeBox("asset/wellnessmain.jpg", "DINNING OFFERS", "21 cousins offer, discount up to 20%", HEIGTH*0.3, width*0.4),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          typeBox("asset/hotelmain.jpg", "DINNING OFFERS", "21 cousins offer, discount up to 20%", HEIGTH*0.3, width*0.4),
                          SizedBox(
                            width: width*0.04,
                          ),
                          typeBox("asset/hotelmain.jpg", "DINNING OFFERS", "21 cousins offer, discount up to 20%", HEIGTH*0.3, width*0.4),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: HEIGTH*0.2,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "DO YOU HAVE A PROMO CODE?",
                      style: GoogleFonts.lato(
                        color: Colors.red,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        helperText: "12 digit code",
                        hintText: "Promo code",
                        hintStyle: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        )
                      ),
                    ),
                    Container(
                      child: FlatButton(
                        onPressed: (){

                        },
                        color: Colors.pinkAccent,
                        child: Text(
                          "SUBMIT",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  _scafoldKey.currentState.showBottomSheet(
                          (context) => Container(
                            height: HEIGTH*0.3,
                            width: width,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Select payment method",style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  ),),
                                  SizedBox(height: 15,),
                                  Container(
                                    height: HEIGTH*0.1,
                                    width: width,
                                    alignment: Alignment.center,
                                    child: ListTile(
                                      onTap: (){
                                        Navigator.pushNamed(context, "/creditcard");
                                      },
                                      leading: Image.asset("asset/stripe.png",fit: BoxFit.cover),
                                      title: Text(
                                        "Stripe",
                                        style: GoogleFonts.lato(
                                          color: Colors.black,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 11,),
                                  Container(
                                    alignment: Alignment.center,
                                    height: HEIGTH*0.1,
                                    width: width,
                                    child: ListTile(
                                      onTap: (){
                                        Navigator.pushNamed(context, "/creditcard");
                                      },
                                      leading: Image.asset("asset/wipay.jpg",fit: BoxFit.cover),
                                      title: Text(
                                        "Wipay",
                                        style: GoogleFonts.lato(
                                          color: Colors.black,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                  );
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      getType(Icons.rice_bowl_sharp, "49.99","30 days", HEIGTH*0.2, width*0.3, Colors.pinkAccent),
                      SizedBox(width: 8,),
                      getType(Icons.rice_bowl_sharp, "359","365days", HEIGTH*0.2, width*0.3, Colors.pinkAccent),
                      SizedBox(width: 8,),
                      getType(Icons.rice_bowl_sharp, "FAQ","how it works", HEIGTH*0.2, width*0.3, Colors.pinkAccent)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget getType(IconData iconData,String title, String subtitle,double height,double width,Color bColor){
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        padding: EdgeInsets.all(10),
        height: height,
        width: width,
        color: bColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height*0.3,
              width: width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    iconData,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
            ),
            SizedBox(height: height*0.3,),
            Text(
              title,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              subtitle,
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 8,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget typeBox(String asset, String title, String bottomTitle,double contheight,double contWidth){
    return Container(
      height: contheight,
      width: contWidth,
      child: Column(
        children: [
          SizedBox(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    height: contheight*0.7,
                    width: contWidth,
                    child: Image.asset(asset,fit: BoxFit.cover,),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              bottomTitle,
              style: GoogleFonts.lato(
                color: Colors.black54,
                fontSize: 10
              ),
            ),
          )
        ],
      ),
    );
  }
}
