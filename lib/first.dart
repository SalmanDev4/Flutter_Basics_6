import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('First Page'),
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
                  color: Colors.teal,
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

List<String> topics = ["Flutter", "Python", "PHP", "Java"];