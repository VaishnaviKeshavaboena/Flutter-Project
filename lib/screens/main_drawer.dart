import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqNsJJ7zDOWP7X-xripvwkRAaAooSYxt-sHg&usqp=CAU'),
                          fit: BoxFit.fill,
                        )),
                  ),
                  Text(
                    "Keshavaboena Vaishnavi Rani",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'profile',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              'settings',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text(
              'logout',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
