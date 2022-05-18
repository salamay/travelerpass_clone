
import 'package:flutter/material.dart';
import 'package:travellerpass/Model/CountryModel.dart';
import 'package:travellerpass/Model/HorizontalListModel.dart';
import 'package:travellerpass/Model/GridviewModel.dart';
import 'package:travellerpass/Model/HomeListModel.dart';
import 'package:travellerpass/Model/ListMetaData.dart';
import 'package:travellerpass/Model/RegisterFieldModel.dart';


const profiletextfielddecoration=InputDecoration(
  fillColor: Colors.transparent,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.transparent
    )
  ),
  border: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.transparent
    )
  ),
  icon: Icon(
    Icons.edit,
    color: Colors.white,
  )
);
List<String> offers=[
  "asset/ic_hw_1.webp",
  "asset/ic_hw_2.webp",
  "asset/ic_hw_3.webp",
  "asset/ic_hw_4.webp"
];
List<RegisterFieldModel> registerfield=[
  RegisterFieldModel(hint:"NAME",hint2:"e.g rebeca smith",iconData: Icons.person_outline_sharp),
  RegisterFieldModel(hint:"EMAIL",hint2:"e.g rebec@gmail.com",iconData: Icons.email_outlined),
  RegisterFieldModel(hint:"+971-MOBILE",hint2:"e.g rebec@gmail.com",iconData: Icons.phone_android),
];
List<String> backgroundimages=[
  "asset/digitaltravelpass.jpg",
  "asset/ic_hw_2.webp"
];
List<ListMetaData> items1=[
  ListMetaData(title: "CREPE CAFE",subtitle: "MULTIPLE OFFER",imagelocation:"asset/aquarius.jpg"),
  ListMetaData(title: "BAIT AL HUBAN",subtitle: "MULTIPLE OFFER",imagelocation:"asset/drink.jpg"),
  ListMetaData(title: "AL HANDALUS",subtitle: "MULTIPLE OFFER",imagelocation:"asset/aquarius.jpg"),
  ListMetaData(title: "BAIT AL HUBAN",subtitle: "MULTIPLE OFFER",imagelocation:"asset/aquariuslimon.jpg"),
];
List<ListMetaData> items2=[
  ListMetaData(title: "CREPE CAFE",subtitle: "MULTIPLE OFFER",imagelocation:"asset/drink.jpg"),
  ListMetaData(title: "BAIT AL HUBAN",subtitle: "MULTIPLE OFFER",imagelocation:"asset/foodanddrink.jpg"),
  ListMetaData(title: "AL HANDALUS",subtitle: "MULTIPLE OFFER",imagelocation:"asset/aquarius.jpg"),
  ListMetaData(title: "BAIT AL HUBAN",subtitle: "MULTIPLE OFFER",imagelocation:"asset/shaker.jpg"),
];
List<ListMetaData> items3=[
  ListMetaData(title: "CREPE CAFE",subtitle: "MULTIPLE OFFER",imagelocation:"asset/shaker.jpg"),
  ListMetaData(title: "BAIT AL HUBAN",subtitle: "MULTIPLE OFFER",imagelocation:"asset/foodanddrink.jpg"),
  ListMetaData(title: "AL HANDALUS",subtitle: "MULTIPLE OFFER",imagelocation:"asset/beer.jpg"),
  ListMetaData(title: "BAIT AL HUBAN",subtitle: "MULTIPLE OFFER",imagelocation:"asset/drink.jpg"),
];

List<HomeListModel> homelist=[
  HomeListModel(metadatalist: items1),
  HomeListModel(metadatalist: items2),
  HomeListModel(metadatalist: items3),
  HomeListModel(metadatalist: items1)
];


List<HorizontalListModel> dinningicon=[
  HorizontalListModel(icondata:Icons.sports_baseball,name: "American" ),
  HorizontalListModel(icondata:Icons.accessible,name: "Arabic" ),
  HorizontalListModel(icondata:Icons.bike_scooter,name: "Italian" ),
  HorizontalListModel(icondata:Icons.cached,name: "Asian" ),
  HorizontalListModel(icondata:Icons.cached,name: "del" ),
  HorizontalListModel(icondata:Icons.cached,name: "chinese" ),
  HorizontalListModel(icondata:Icons.cached,name: "chinese" ),
  HorizontalListModel(icondata:Icons.cached,name: "chinese" ),
  HorizontalListModel(icondata:Icons.cached,name: "chinese" ),
];

List<GridviewModel> dinngGridlist=[
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/bar2.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/bar.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/bar2.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/beautifulbar.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/bar2.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/bar.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/beautifulbar.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/Paradiso.png"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/beautifulbar.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/bar.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/Connaught.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/Paradiso.png"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/Connaught.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/bar.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/Paradiso.png"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/bar.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/beautifulbar.jpg"),
];
List<GridviewModel> wellnessGridlist=[
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/wellness.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/wellness2.png"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/wellness3.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/wellness2.png"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/wellness.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/wellness2.png"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/wellness3.jpg"),
];
List<GridviewModel> experiencegridlist=[
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/hotel2.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/hotel3.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/hotel4.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/hotel3.jpg"),
  GridviewModel(title: "Lagoon juice bar",type: "Bar",discount: "25% of total bill",name: "belad bont resort",distance:"234.5KM",imagelocation: "asset/hotel2.jpg"),
];

List<Countrymodel> countries=[
  Countrymodel(country: "Saudi",image:"asset/saudi.jpg"),
  Countrymodel(country: "india",image:"asset/india.jpg"),
  Countrymodel(country: "oman",image:"asset/oman.webp"),
];