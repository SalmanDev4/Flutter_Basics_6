import 'package:flutter/material.dart';
import 'package:flutterbasics6/first.dart';
import 'package:flutterbasics6/second.dart';
import 'package:flutterbasics6/third.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Basics 6 ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Basics 6 Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
          controller: controller,
          children: <Widget>[
            FirstPage(),
            SecondPage(),
            ThirdPage(),
          ],
        ),
    );
  }
}

final controller = PageController(
  initialPage: 1,
);