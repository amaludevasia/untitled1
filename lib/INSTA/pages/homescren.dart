
import 'package:flutter/material.dart';
import 'package:untitled1/INSTA/pages/bottomicons/accounticon.dart';

import 'bottomicons/addicon.dart';
import 'bottomicons/homeicon.dart';
import 'bottomicons/likeicon.dart';
import 'bottomicons/searchicon.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentTab = 0;

  late List<Widget> page;
  var _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPage = buttonicons();

    page = [
       homeicon(),
       searchicon(),
       addicon(),
      likeicon(),
       accounticon(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var _textStyle = new TextStyle(fontSize: 0.0);

    var _bottomItems = new BottomNavigationBar(
      currentIndex: _currentTab,
      onTap: (int index) {
        setState(() {
          _currentTab = index;
          _currentPage = page[index];
        });
      },
      type: BottomNavigationBarType.fixed,
      iconSize: 30.0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: new Text("", style: _textStyle),
          activeIcon: Icon(
            Icons.home,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          title: new Text("", style: _textStyle),
          activeIcon: Icon(
            Icons.search,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_box,
            color: Colors.grey,
          ),
          title: new Text("", style: _textStyle),
          activeIcon: Icon(
            Icons.add_box,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            color: Colors.grey,
          ),
          title: new Text("", style: _textStyle),
          activeIcon: Icon(
            Icons.favorite,
            color: Colors.black,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            color: Colors.grey,
          ),
          title: new Text("", style: _textStyle),
          activeIcon: Icon(
            Icons.account_circle,
            color: Colors.black,
          ),
        ),
      ],
    );

    return new MaterialApp(
      home: new Scaffold(bottomNavigationBar: _bottomItems, body: _currentPage),
    );
  }

  buttonicons() {}
}









