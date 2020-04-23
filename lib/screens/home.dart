import 'package:flutter/material.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.deepPurple,
      child: Center(
        child: Text(
           sayHello(),
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
      ),
    );
  }

  String sayHello(){
    String hello;
    DateTime now = new DateTime.now();
    int hour = now.hour;
    int minute = now.minute;
    String time_frame;
    if(hour < 12){
      hello = "Good Morning";
      time_frame = "AM";
    } else if(hour < 18){
      hello = "Good Afternoon";
      time_frame =" PM";
    } else{
      hello = "Good Evening";
      time_frame ="PM";
    }

    String  minutes = (minute < 10) ? "0" + minute.toString() : minute.toString();
    return "It's now " + hour.toString()+ ":" + minutes.toString()+time_frame + ". \n "+ hello;

  }

}