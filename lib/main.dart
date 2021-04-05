import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'like.dart';
import 'view.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.light(),
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(
        children: [
          Center(
              child: RaisedButton(
                  child: Text('Likes'),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Likes(),
                      )))),
          Center(
              child: RaisedButton(
                  child: Text('Views'),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => Views(),
                      )))),
          Center(
              child: RaisedButton(
                  child: Text('Share'),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () {
                    Share.share('check out my website https://example.com');
                  })),
        ],
      ),
    );
  }
}
