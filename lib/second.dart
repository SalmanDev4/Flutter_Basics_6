import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Second Page'),
      // ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: topics.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: ValueKey(topics[index]),
              onDismissed: (direction) {
                setState(() {
                  topics.removeAt(index);
                });
              },
              child: ListTile(
                title: Container(
                  height: 50.0,
                  color: Colors.amber,
                  child: Center(
                      child: Text(
                    topics[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              background: Container(
                color: Colors.green,
                child: Icon(Icons.check),
              ),
              secondaryBackground: Container(
                color: Colors.red,
                child: Icon(Icons.cancel),
              ),
            );
          },
        ),
      ),
    );
  }
}

List<String> topics = ["Arabic", "English", "French", "Spanish"];