import 'package:flutter/material.dart';
import 'package:maps_schoolapp/account.dart';
import 'package:maps_schoolapp/carouselpage.dart';
import 'package:maps_schoolapp/list_news.dart';
import 'package:maps_schoolapp/page_maps.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TabBar myTabBar = TabBar(
    indicator: BoxDecoration(
        color: Colors.black,
        border: Border(top: BorderSide(color: Colors.amber, width: 5))),
    tabs: <Widget>[
      
      Tab(
        icon: Icon(Icons.home, color: Colors.amber),
        text: "Home", 
      ),
      Tab(
        icon: Icon(Icons.assignment, color: Colors.amber),
        text: "News",
      ),
      Tab(
        icon: Icon(
          Icons.location_on,
          color: Colors.amber,
        ),
        text: "Location",
      ),
      Tab(
        icon: Icon(Icons.account_circle, color: Colors.amber),
        text: "Account",
      ),
      
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
            length: 4,
            child: Scaffold(
              backgroundColor: Color(0xFFE9E7DA),
              resizeToAvoidBottomPadding: false,
              appBar: new AppBar(
                title: new Text(
                  "Sekolah Masehi Kudus",
                  style: new TextStyle(color: Colors.white),
                ),
                
                backgroundColor: Colors.black,
                  
                
                bottom: PreferredSize(
                    preferredSize:
                        Size.fromHeight(myTabBar.preferredSize.height),
                    child: Container(color: Colors.blueAccent, child: myTabBar)),
                    
              ),
              
              body: TabBarView(
        children: <Widget>[
          Center(
            child: CarouselDemo()),
          Center(
            child: ListNews()),
          Center(
            child: PageMaps()),
          Center(
            child: SignOut()),
        ],
        ),
              
              
            )));
  }
}

