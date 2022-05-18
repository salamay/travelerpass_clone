import 'package:flutter/cupertino.dart';

class MyProvider extends ChangeNotifier{

  int homepageindex=0;
  int imageindex=0;

  void changeIndex(int index){
    this.homepageindex=index;
    notifyListeners();
  }
  void changeImageIndex(int index){
    this.imageindex=index;

  }
  void increaseImageIndex(){
    this.imageindex+=1;
  }

}