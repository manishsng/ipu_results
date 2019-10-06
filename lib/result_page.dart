import 'package:flutter/material.dart';
import 'tabbar_styling.dart';
import 'constants.dart';
import 'menu.dart';

class ResultPage extends StatefulWidget {
  ResultPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(child: TabBarStyle(text: "1st")),
    Tab(child: TabBarStyle(text: "2nd")),
    Tab(child: TabBarStyle(text: "3rd")),
    Tab(child: TabBarStyle(text: "4th")),
    Tab(child: TabBarStyle(text: "5th")),
    Tab(child: TabBarStyle(text: "6th")),
    Tab(child: TabBarStyle(text: "7th")),
    Tab(child: TabBarStyle(text: "8th")),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          "IPU Results",
          style: TextStyle(foreground: Paint()..shader = kLinearGradient),
        ),
        bottom: TabBar(
          indicatorColor: kUIColor,
          indicatorPadding:
              EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          isScrollable: true,
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          return Center(
            child: Text(
              'This is the tab',
              style: TextStyle(fontSize: 36),
            ),
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 10.0,
        child: Container(
          decoration: BoxDecoration(
            gradient: kLg,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Drawer(
                      child: showMenu(),
                    );
                  }),
              IconButton(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                ),
                onPressed: null,
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: CircleBorder(side: BorderSide(color: kUIColor)),
        child: Text(
          "Total",
          style: TextStyle(color: kUIColor),
        ),
        backgroundColor: Colors.white,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  showMenu() {
    showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Menu();
        });
  }
}
