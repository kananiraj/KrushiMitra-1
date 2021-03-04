import 'package:flutter/material.dart';

import './main_drawer.dart';
import 'Profilepage.dart';
import 'ForumPage.dart';
import 'Homepage.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'SearchPage.dart';

// import 'Profilepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "HOME",
       theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title:"HOME PAGE"),
    debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
   MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _selectpage = 0;
  final _pageOption = [HomePage(), ForumPage(), SearchPage(),ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      drawer: MainDrawer(),
      body: _pageOption[_selectpage],
        bottomNavigationBar: ConvexAppBar(
            color: Colors.white,
            backgroundColor: Colors.orange,
          items: [
            TabItem(icon: Icons.home, title: 'Home',),
            TabItem(icon: Icons.forum, title: 'Forum'),
            TabItem(icon: Icons.search, title: 'Search'),
            TabItem(icon: Icons.person, title: 'Profile'),
          ],
          initialActiveIndex: 0,
          onTap: (int index){
                setState(() {
                  _selectpage=index;
                });
          },
        ),
       
        );
  }
}