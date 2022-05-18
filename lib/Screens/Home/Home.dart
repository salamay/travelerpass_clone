import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travellerpass/Model/CountryModel.dart';
import 'package:travellerpass/Providers/MyProvider.dart';
import 'package:travellerpass/Screens/Home/PageViews/Dinning.dart';
import 'package:travellerpass/Screens/Home/PageViews/Experiences.dart';
import 'package:travellerpass/Screens/Home/PageViews/HomePage.dart';
import 'package:travellerpass/Screens/Home/PageViews/Retail.dart';
import 'package:travellerpass/Screens/Home/PageViews/Wellness.dart';
import 'package:travellerpass/Screens/Widget/drawer.dart';
import 'package:travellerpass/Storage/MyStorage.dart';

class Home extends StatelessWidget {
  final _pageController = PageController();
  final _key=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double HEIGTH = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return Consumer<MyProvider>(
      builder: (context,myprovider,widget){
        return FutureBuilder(
          future: MyStorage().getCountry(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              List<Countrymodel> coutrylist=snapshot.data;
              return  Scaffold(
                key: _key,
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  leading: GestureDetector(
                    child: Container(
                      width: width*0.2,
                      margin: EdgeInsets.all(5),
                      child: GestureDetector(
                        onTap: (){
                          _key.currentState.showBottomSheet((context) =>
                              Container(
                                padding: EdgeInsets.all(10),
                                height: HEIGTH*0.2,
                                width: width,
                                child:  Center(
                                  child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: coutrylist.length,
                                    itemBuilder: (BuildContext context, int index) {
                                      return ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          height: HEIGTH*0.15,
                                          width: width*0.3,
                                          child: Column(
                                            children: [
                                              Image.asset(coutrylist[index].image,fit: BoxFit.cover,),
                                              SizedBox(height: 10,),
                                              Text(
                                                coutrylist[index].country,
                                                style: GoogleFonts.lato(
                                                    color: Colors.black87,
                                                    fontSize: 14
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              )
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              "Oman",
                              style: GoogleFonts.lato(
                                color: Colors.black87,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down_sharp,
                              color: Colors.black87,
                              size: 10,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  actions: [
                    IconButton(
                        onPressed: (){

                        },
                        icon: Icon(
                          Icons.search_outlined,size: 25,
                          color: Colors.black87,
                        )
                    ),
                    IconButton(
                        onPressed: (){
                          _key.currentState.openEndDrawer();
                        },
                        icon: Icon(
                          Icons.wrap_text,size: 25,
                          color: Colors.black87,
                        )
                    )
                  ],
                ),
                endDrawer: Mydrawer(),
                backgroundColor: Colors.white,
                body:  PageView(
                  controller: _pageController,
                  children: [
                    HomePage(),
                    Dinning(),
                    Experiences(),
                    Retail(),
                    Wellness()
                  ],
                  onPageChanged: (index) {
                    // Use a better state management solution
                    // setState is used for simplicity
                    Provider.of<MyProvider>(context,listen: false).changeIndex(index);
                  },
                ),
                bottomNavigationBar: BottomBar(
                  height: HEIGTH*0.12,
                  selectedIndex: myprovider.homepageindex,
                  onTap: (int index) {
                    _pageController.jumpToPage(index);
                    Provider.of<MyProvider>(context,listen: false).changeIndex(index);
                  },
                  items: <BottomBarItem>[
                    BottomBarItem(
                      inactiveColor: Colors.grey,
                      darkActiveColor: Colors.grey,
                      activeColor: Colors.pink,
                      icon: Container(
                        child: Column(
                          children: [
                            SizedBox(
                                height: HEIGTH*0.06,
                                width: width*0.07,
                                child: Image.asset("asset/ic_home_me.png")
                            )
                          ],
                        ),
                      ),
                      title: Text('HOME',style: TextStyle(color: Colors.grey,fontSize: 8)),
                    ),
                    BottomBarItem(
                      inactiveColor: Colors.grey,
                      darkActiveColor: Colors.grey,
                      activeColor: Colors.pink,
                      icon: Container(
                        child: Column(
                          children: [
                            SizedBox(
                                height: HEIGTH*0.06,
                                width: width*0.07,
                                child: Image.asset("asset/ic_dining.png")
                            )
                          ],
                        ),
                      ),
                      title: Text('DINING',style: TextStyle(color: Colors.grey,fontSize: 8)),
                    ),
                    BottomBarItem(
                      inactiveColor: Colors.grey,
                      darkActiveColor: Colors.grey,
                      activeColor: Colors.pink,
                      icon: Container(
                        child: Column(
                          children: [
                            SizedBox(
                                height: HEIGTH*0.06,
                                width: width*0.07,
                                child: Image.asset("asset/ic_leisure.png")
                            )
                          ],
                        ),
                      ),
                      title: Text('EXPERIENCES',style: TextStyle(color: Colors.grey,fontSize: 8),),
                    ),
                    BottomBarItem(
                      inactiveColor: Colors.grey,
                      darkActiveColor: Colors.grey,
                      activeColor: Colors.pink,
                      icon: Container(
                        child: Column(
                          children: [
                            SizedBox(
                                height: HEIGTH*0.06,
                                width: width*0.07,
                                child: Image.asset("asset/ic_dining.png")
                            )
                          ],
                        ),
                      ),
                      title: Text('RETAIL',style: TextStyle(color: Colors.grey,fontSize: 8)),
                    ),
                    BottomBarItem(
                      inactiveColor: Colors.grey,
                      darkActiveColor: Colors.grey,
                      activeColor: Colors.pink,
                      icon: Container(
                        child: Column(
                          children: [
                            SizedBox(
                                height: HEIGTH*0.06,
                                width: width*0.07,
                                child: Image.asset("asset/ic_wellness.png")
                            )
                          ],
                        ),
                      ),
                      title: Text('WELLNESS',style: TextStyle(color: Colors.grey,fontSize: 8)),
                    ),
                  ],
                ),
              );
            }else{
              return SpinKitFadingCube(
                color: Colors.pinkAccent,
                size: 20,
              );
            }
          },
        );
      },
    );
  }
}
