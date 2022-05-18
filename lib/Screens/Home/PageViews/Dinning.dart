import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travellerpass/Model/GridviewModel.dart';
import 'package:travellerpass/Screens/Constant/constants.dart';
import 'package:travellerpass/Storage/MyStorage.dart';

class Dinning extends StatefulWidget {
  @override
  _DinningState createState() => _DinningState();
}

class _DinningState extends State<Dinning> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double HEIGTH = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            height: HEIGTH,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: HEIGTH * 0.1,
                  child: Container(
                    width: width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dinningicon.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  dinningicon[index].icondata,
                                  color: Colors.pinkAccent,
                                ),
                                Text(
                                  dinningicon[index].name,
                                  style: TextStyle(
                                      color: Colors.black87, fontSize: 10),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                FutureBuilder(
                  future: MyStorage().getDinningList(),
                    builder: (context,snapshot){
                      if(snapshot.hasData){
                        List<GridviewModel> dinninggridlist=snapshot.data;
                        return Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Card(
                                  elevation: 6,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Container(
                                      width: width,
                                      height: HEIGTH * 0.2,
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(15),
                                          child: Image.asset(
                                            "asset/DinningTables.png",
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                                SizedBox(height: 20,),
                                Container(
                                  height: HEIGTH*0.6,
                                  child: AnimationLimiter(
                                    child: GridView.count(
                                      crossAxisCount: 2,
                                      children: List.generate(dinninggridlist.length, (int index) {
                                        return AnimationConfiguration.staggeredGrid(
                                            position: index,
                                            duration: const Duration(milliseconds: 375),
                                            columnCount: 2,
                                            child: ScaleAnimation(
                                              child: FadeInAnimation(
                                                child: Container(
                                                  height: HEIGTH*0.1,
                                                  child: Card(
                                                    margin: EdgeInsets.all(10),
                                                      elevation: 0,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Expanded(
                                                            child: Container(
                                                              width: width*0.4,
                                                                height:HEIGTH*0.08,
                                                                child: Image.asset(dinninggridlist[index].imagelocation,fit: BoxFit.fill,)
                                                            ),
                                                          ),
                                                          Container(
                                                            height: HEIGTH*0.02,
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  dinninggridlist[index].title,
                                                                  style: GoogleFonts.lato(
                                                                      color: Colors.black87,
                                                                      fontSize: 10,
                                                                      fontWeight: FontWeight.normal
                                                                  ),
                                                                ),
                                                                SizedBox(width: width*0.1,),
                                                                Icon(
                                                                  Icons.favorite,
                                                                  color: Colors.pink,
                                                                  size: 14,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            height: HEIGTH*0.02,
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  dinninggridlist[index].type,
                                                                  style: GoogleFonts.lato(
                                                                      color: Colors.black87,
                                                                      fontSize: 10,
                                                                      fontWeight: FontWeight.normal
                                                                  ),
                                                                ),
                                                                SizedBox(width: width*0.05,),
                                                                Icon(
                                                                  Icons.star_border,
                                                                  color: Colors.orangeAccent,
                                                                  size: 14,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Text(
                                                            dinninggridlist[index].discount,
                                                            style: GoogleFonts.lato(
                                                                color: Colors.black87,
                                                                fontSize: 10,
                                                                fontWeight: FontWeight.normal
                                                            ),
                                                          ),
                                                          Container(
                                                            height: HEIGTH*0.02,
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  dinninggridlist[index].name,
                                                                  style: GoogleFonts.lato(
                                                                      color: Colors.black87,
                                                                      fontSize: 10,
                                                                      fontWeight: FontWeight.normal
                                                                  ),
                                                                ),
                                                                SizedBox(width: width*0.05,),
                                                                Text(
                                                                  dinninggridlist[index].distance,
                                                                  style: GoogleFonts.lato(
                                                                      color: Colors.black87,
                                                                      fontSize: 10,
                                                                      fontWeight: FontWeight.bold
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                  ),
                                                ),
                                              ),
                                            )
                                        );
                                      }),
                                    ),
                                  ),
                                ),
                              ],
                            )
                        );
                      }else{
                        return SpinKitSpinningLines(
                          color: Colors.black87,
                          size: 40,
                        );
                      }
                    }
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
