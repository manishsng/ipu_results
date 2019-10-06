import 'package:flutter/material.dart';
import 'constants.dart';
import 'home_page.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.zero,
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                gradient: kLg,
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      bottom: 12.0,
                      left: 16.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            size: 50.0,
                          ),
                          Text("Jagrit Kharbanda",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500)),
                        ],
                      )),
                ],
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                int count = 0;
                Navigator.popUntil(context, (route) {
                  return count++ == 2;
                });
              },
            ),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.info_outline),
            ),
            ListTile(
              title: Text("Privacy Policy"),
              leading: Icon(Icons.list),
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.exit_to_app),
            ),
          ],
        ),
      ),
    );
  }
}
