import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String url; // location url for api endpoint
  String location; // location for the UI
  String flag; // url to flag icon
  String time; // time in that location
  bool isDaytime; // is it day or night

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      // make a request
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      //create datetime obj
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // set time property
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);

    } catch (e) {
      print('ERROR: $e');
      time = 'could not get time data';
    }
  }
}
