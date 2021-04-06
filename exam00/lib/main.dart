import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {

  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode)
      exit(1);
  };

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  static const List<Widget> _textArrWidget = <Widget>[
    Text('this is one'),
    Text('this is two'),
    Text('this is three'),

  ];

  static void _onTap(){
    print('1');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'this is app name', //유저에게 보여주는 oneline 설명 //최근 사용한 앱목록의 text
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
        home : HomeWidget()
    );
  }
}


class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget>{
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      this._selectedIndex = index;
    });
  }

  Widget getContent(int index){
   _onItemTapped(index);
    return  <Widget>[
                    Text('content1 '),
                    Text('content1 '),
                    Text('content1 '),
                  ][_selectedIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('app bar'),
      ),
      body :
      // Stack(
      //   children: <Widget>[
      //     Container(width: 90, height: 90, color: Colors.red),
      //     Container(width: 80, height: 80, color: Colors.blue),
      //     Container(width: 70, height: 70, color: Colors.yellow),
      //     Container(width: 60, height: 60, color: Colors.green),
      //     Container(width: 50, height: 50, color: Colors.black),
      //   ],
      // ),
      getContent(_selectedIndex),
      bottomNavigationBar:
      BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label : 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label : 'Business'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label : 'School'
          ),
        ],
        backgroundColor: Colors.yellow,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
      ),

      // BottomAppBar(
      //   child: Text('1'),
      // ),
    );
  }
}

