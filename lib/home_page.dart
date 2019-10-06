import 'package:flutter/material.dart';
import 'constants.dart';
import 'result_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "IPU Results",
            style: TextStyle(foreground: Paint()..shader = kLinearGradient),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
//          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(color: kUIColor),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    "Enter your enrollment number :-",
                    style: TextStyle(fontSize: 20.0),
                  ),
                  TextField(
                    cursorColor: kUIColor,
                    decoration: InputDecoration(
                      hintText: "Eg.54654616515",
                      hintStyle: TextStyle(
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue,
                    blurRadius: 5.0,
                    offset: Offset(0.0, 2.0),
                  ),
                ],
                gradient: kLg,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ResultPage(title: "IPU Results");
                  }));
                },
                child: Text(
                  "Check Result",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ],
        ));
  }
}
