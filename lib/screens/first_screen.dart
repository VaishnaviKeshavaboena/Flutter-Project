import 'package:flutter/material.dart';
import 'package:flutter_project/screens/main_drawer.dart';
import 'package:flutter_project/screens/second_screen.dart';

// ignore: must_be_immutable
class ScreenOne extends StatelessWidget {
  final namecontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Workspace for learning'),
          //initialRoute:"/",
          //routes:{
          //"/":(context)=>ScreenOne(),
          //"/next":(context)=>ScreenTwo(),
          //},
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.search),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(Icons.more_vert),
              ),
            ),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Colors.blue],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              ),
            ),
          ),
          elevation: 25,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.feedback), text: 'Feed'),
              Tab(icon: Icon(Icons.notes), text: 'Notes'),
              Tab(icon: Icon(Icons.add), text: 'Add'),
            ],
          ),
        ),
        drawer: MainDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome to Online Education",
                style: TextStyle(
                    color: Colors.black.withOpacity(1), fontSize: 25.0),
              ),
              Image.asset("images/learning.jpeg"),
              Image.network(
                  'https://thumbs.dreamstime.com/b/online-learning-handwritten-text-modern-calligraphy-isolated-white-190353829.jpg',
                  height: 150,
                  width: 150),
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20, bottom: 5),
                child: SizedBox(
                  width: 200,
                  child: TextField(
                    controller: namecontroller,
                    decoration: InputDecoration(
                        hintText: "Enter your name",
                        labelText: "Name",
                        border: OutlineInputBorder()),
                  ),
                ),
              ),
              // ignore: deprecated_member_use
              RaisedButton(
                onPressed: () {
                  var name_entered = namecontroller.text;
                  print('Name $name_entered');
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScreenTwo(
                                guestname: name_entered,
                              )));
                  // Navigator.pushNamed(context, "/next");
                },
                child: Text('Submit'),
              ),

              SizedBox(
                height: 200,
              )
            ],
          ),
        ),
      ));
}

center(Image image, Image image2, {TextField child}) {}
