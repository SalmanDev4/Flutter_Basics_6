import 'package:flutter/material.dart';

class FourthPage extends StatefulWidget {
  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
          controller: controller,
          children: <Widget>[
            first(),
            second(),
            third(),
          ],
        ),
    );
  }
}
final controller = PageController(
  initialPage: 1,
);

first (){
   return Container(
     padding: EdgeInsets.all(8.0),
     child: Column(
       children: <Widget>[
         Row(
           mainAxisSize: MainAxisSize.max,
           children: <Widget>[
             Container(
               color: Colors.lightBlue,
               height: 100.0,
             ),
           ],
         ),
         Row(
           mainAxisSize: MainAxisSize.max,
           children: <Widget>[
             Container(
               color: Colors.lightGreen,
               height: 100.0,
             ),
             Container(
               color: Colors.redAccent,
               height: 100.0,
             ),
           ],
         ),
       ],
     ),
   );
}

second (){
   return Container(
     padding: EdgeInsets.all(8.0),
     child: Column(
       children: <Widget>[
         Row(
           mainAxisSize: MainAxisSize.max,
           children: <Widget>[
             Container(
               color: Colors.lightBlue,
               height: 100.0,
             ),
           ],
         ),
         Row(
           mainAxisSize: MainAxisSize.max,
           children: <Widget>[
             Container(
               color: Colors.lightGreen,
               height: 100.0,
             ),
             Container(
               color: Colors.redAccent,
               height: 100.0,
             ),
           ],
         ),
       ],
     ),
   );
}

third (){
   return Container(
     padding: EdgeInsets.all(8.0),
     child: Column(
       children: <Widget>[
         Row(
           mainAxisSize: MainAxisSize.max,
           children: <Widget>[
             Container(
               color: Colors.lightBlue,
               height: 100.0,
             ),
           ],
         ),
         Row(
           mainAxisSize: MainAxisSize.max,
           children: <Widget>[
             Container(
               color: Colors.lightGreen,
               height: 100.0,
             ),
             Container(
               color: Colors.redAccent,
               height: 100.0,
             ),
           ],
         ),
       ],
     ),
   );
}