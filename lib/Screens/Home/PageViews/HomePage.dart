import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:travellerpass/Screens/Constant/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  Timer _timer;
  int _imageindex = 0;
  AnimationController appBarController;
  Animation colorAnimation;
  PanelController _panelController = PanelController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer.cancel();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (_imageindex == backgroundimages.length - 1) {
        _imageindex = 0;
      } else {
        _imageindex += 1;
      }
      setState(() {});
    });
    appBarController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    colorAnimation = ColorTween(begin: Colors.transparent, end: Colors.black87)
        .animate(appBarController);
  }

  @override
  Widget build(BuildContext context) {
    double HEIGTH = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(
            height: HEIGTH * 0.5,
            width: width,
            child: Image.asset(
              backgroundimages[_imageindex],
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: HEIGTH,
            width: width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.center,
                    colors: [Colors.transparent, Colors.white])),
          ),
          SlidingUpPanel(
            controller: _panelController,
            header: Container(
              width: width,
              child: Center(
                child: IconButton(
                  icon: Icon(
                    Icons.linear_scale,
                    color: Colors.black87,
                    size: 40,
                  ),
                  onPressed: () {
                    _panelController.close();
                  },
                ),
              ),
            ),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
            margin: EdgeInsets.only(top: 30, left: 10, right: 10,),
            backdropEnabled: true,
            parallaxEnabled: true,
            isDraggable: true,
            minHeight: HEIGTH * 0.3,
            maxHeight: HEIGTH,
            onPanelSlide: (val) {
              //  appBarController.forward();
            },
            panel: Container(
              color: Colors.transparent,
              height: HEIGTH * 0.4,
              child: Padding(
                padding: EdgeInsets.all(14),
                child: ListView.builder(
                    itemCount: homelist.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: width,
                        height: HEIGTH * 0.3,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: homelist[index].metadatalist.length,
                            itemBuilder: (context, i) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      margin: EdgeInsets.all(10),
                                      width: width * 0.4,
                                      child: Card(
                                        elevation: 10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15)
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Image.asset(
                                            homelist[index]
                                                .metadatalist[i]
                                                .imagelocation,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      )),
                                  Text(
                                    homelist[index].metadatalist[i].title,
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    homelist[index].metadatalist[i].subtitle,
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 5,
                                    ),
                                  )
                                ],
                              );
                            }),
                      );
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
