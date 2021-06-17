import 'package:flutter/material.dart';
import 'package:flutter_project/screens/first_screen.dart';
import 'package:flutter_project/screens/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  get name_enterd => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/one': (context) => ScreenOne(),
        '/two': (context) => ScreenTwo(
              guestname: name_enterd,
            ),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Home page',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              RaisedButton(
                onPressed: () {
                  //Navigator.push(context,
                  // MaterialPageRoute(builder: (context) => ScreenOne()));
                  Navigator.pushNamed(context, '/one');
                },
                child: Text('Go to screen one'),
              ),
              RaisedButton(
                onPressed: () {
                  //Navigator.push(context,
                  // MaterialPageRoute(builder: (context) => ScreenOne()));
                  Navigator.pushNamed(context, '/two');
                },
                child: Text('Go to screen Two'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
