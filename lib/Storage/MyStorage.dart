import 'package:travellerpass/Model/CountryModel.dart';
import 'package:travellerpass/Model/GridviewModel.dart';
import 'package:travellerpass/Screens/Constant/constants.dart';

class MyStorage{

  Future<List<GridviewModel>> getDinningList()async{
    return dinngGridlist;
  }
  Future<List<GridviewModel>> getWellnessGridList()async{
    return wellnessGridlist;
  }
  Future<List<GridviewModel>> getExperienceGridList()async{
    return experiencegridlist;
  }
  Future<List<Countrymodel>> getCountry()async{
    return countries;
  }

}