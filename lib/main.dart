import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'My first flutter app',
      home: new HomePage(title: 'Home Page')
    );
  }
}

class HomePage extends StatelessWidget {
  final String title;

  HomePage({ this.title });

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(this.title)),
      body: new HelloFlutterText()
    );
  }
}

class HelloFlutterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return new Center(
      child: RandomWords(),
    );
  }
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase,
      textDirection: TextDirection.ltr,
      style: new TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold)
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}