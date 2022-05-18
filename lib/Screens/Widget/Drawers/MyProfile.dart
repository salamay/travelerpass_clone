import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_cupertino.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travellerpass/Screens/Constant/constants.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String _selectedCupertinoCountry;
  @override
  Widget build(BuildContext context) {
    double HEIGTH = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          onPressed: () {
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
                height: HEIGTH * 0.1,
                width: width * 0.1,
                child: Image.asset(
                  "asset/ic_united.png",
                  fit: BoxFit.contain,
                )),
            SizedBox(
              width: width * 0.05,
            ),
            Text("Happy United club",
                style: GoogleFonts.lato(
                  color: Colors.white,
                ))
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.all(10),
        height: HEIGTH,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: HEIGTH * 0.2,
                width: width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.deepPurple, Colors.redAccent],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight)),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: HEIGTH * 0.1,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextField(

                                decoration: profiletextfielddecoration.copyWith(
                                    labelText: "AYOTUNDE SALAM",
                                    labelStyle: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: profiletextfielddecoration.copyWith(
                                    labelText: "MEMBERSHIP NO",
                                    labelStyle: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: HEIGTH * 0.03,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "The membership no is a unique code that can be found in the traveler pass booklet or can be purchase in the app",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ),
            SizedBox(
              height: HEIGTH * 0.03,
            ),
            Card(
              child: ListTile(
                title: Text(
                  "Ayotundesalam16@gmail.com",
                  style: TextStyle(color: Colors.black54),
                ),
                trailing: Icon(
                  Icons.email,
                  color: Colors.red,
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: profiletextfielddecoration.copyWith(
                      labelText: "+913524379445",
                      helperText: "Enter new number"),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: profiletextfielddecoration.copyWith(
                      labelText: "12", helperText: "Enter new age"),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(
                    "GENDER"
                  ),
                  subtitle: DropdownButton<String>(
                    items: <String>['MALE', 'FEMALE'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                )
              ),
            ),
            FlatButton(
                color: Colors.red,
                onPressed: () {},
                child: Text(
                  "Select gender",
                  style: TextStyle(color: Colors.white),
                )),
            TextButton(
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      showTitleActions: true,
                      minTime: DateTime(1930, 3, 5),
                      maxTime: DateTime(2021, 6, 7), onChanged: (date) {
                    print('change $date');
                  }, onConfirm: (date) {
                    print('confirm $date');
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
                child: Text(
                  'Date of birth',
                  style: TextStyle(color: Colors.redAccent),
                )
            ),
            TextButton(
                onPressed: () {
                  _openCupertinoCountryPicker();
                },
                child: Text(
                  'Country',
                  style: TextStyle(color: Colors.redAccent),
                )
            ),
            Container(
              width: width,
              child: FlatButton(
                color: Colors.red,
                  onPressed: (){

                  },
                  child: Text(
                    "SUBMIT",
                    style:TextStyle(
                      color: Colors.white
                    )
                  )
              ),
            )
          ],
        ),
      )),
    );
  }
  void _openCupertinoCountryPicker() => showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) {
        return CountryPickerCupertino(
          pickerSheetHeight: 300.0,
          onValuePicked: (Country country) =>
              setState(() => _selectedCupertinoCountry = country.name),
        );
      });
}
