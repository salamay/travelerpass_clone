import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:typewriter/typewriter.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  //Appname animation controller
  AnimationController nameController;
  AnimationController _animationController;
  AnimationController _lastfadeController;
  AnimationController _motionController;
  Animation<double> _fadeAnimation;
  Animation<double> _lastFadeanimation;
  Animation<Offset> _motionAnimation;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
    _motionController.dispose();
    nameController.dispose();
    _lastfadeController.dispose();
  }
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch(state) {
      case AppLifecycleState.resumed:
        _animationController.forward();
        _motionController.forward();
        nameController.forward();
        _lastfadeController.forward();
      // Handle this case
        break;
      case AppLifecycleState.inactive:
        _animationController.stop();
        _motionController.stop();
        nameController.stop();
        _lastfadeController.stop();
      // Handle this case
        break;
      case AppLifecycleState.paused:
        _animationController.stop();
        _motionController.stop();
        nameController.stop();
        _lastfadeController.stop();
      // Handle this case
        break;
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);
    _lastfadeController = AnimationController(
        duration: Duration(milliseconds: 1000), vsync: this);
    _lastFadeanimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1, end: 0), weight: 50)
    ]).animate(_lastfadeController);

    _lastfadeController.addListener(() {
      print(_lastfadeController.value);
    });

    _animationController = AnimationController(
        duration: Duration(milliseconds: 1500), vsync: this);
    _fadeAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0, end: 1), weight: 50)
    ]).animate(_animationController);
    _animationController.forward();

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _motionController.forward();
        Future.delayed(Duration(milliseconds: 650),(){
          nameController.forward();
        });

      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double HEIGTH = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);

    _motionController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 2200));
    _motionAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(width*0.015, 0.0),
    ).animate(CurvedAnimation(
      parent: _motionController,
      curve: Curves.linear,
    ));
    _motionController.addStatusListener((status) {
      if(status==AnimationStatus.completed){
        _animationController.reverse();
        Future.delayed(Duration(milliseconds: 1000),(){
          _lastfadeController.forward();
          Future.delayed(Duration(milliseconds: 1000),(){
             Navigator.pushReplacementNamed(context, "/intro");
          });
        });
      }
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
            child: Stack(
          children: [
            Container(
                    child: Center(
                      child:AnimatedBuilder(
                          animation: _lastFadeanimation,
                          builder: (context,_){
                            return Opacity(
                              opacity: _lastFadeanimation.value,
                              child: Container(
                                child: Typewriter(
                                  "TRAVELLERPASS",
                                  builder: (val){
                                    return Text(
                                      val,
                                      style: GoogleFonts.acme(
                                        color: Colors.white,
                                        fontSize: 22,
                                        letterSpacing: 4,
                                      )
                                    );
                                  },
                                  controller: nameController,
                                ),
                              ),
                            );
                          }
                      )
                    ),
                  ),
            Positioned(
              top: HEIGTH * 0.43,
              child: AnimatedBuilder(
                  animation: _fadeAnimation,
                  builder: (context, _) {
                    return Opacity(
                            opacity: _fadeAnimation.value,
                            child: SlideTransition(
                              position: _motionAnimation,
                              child: Container(
                                height: HEIGTH*0.1,
                                  width: width*0.2,
                                  child: Image.asset("asset/ic_united.png",fit: BoxFit.contain,)
                              ),
                            ),
                          );
                  }),
            ),
          ],
        )),
      ),
    );
  }
}
