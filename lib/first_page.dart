import 'package:flutter/material.dart';

import 'my_home_page.dart';
import 'my_more_page.dart';
import 'my_personal_page.dart';
import 'my_store_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var _index = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final List<Widget> _widgetOptions = <Widget>[
    MyHomePage(),
    MyStorePage(),
    MyMorePage(),
    MyPersonalPage(),
  ]; // 4개의 페이지를 여기서 지정해준다.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hogangnono",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: SafeArea(
        child: _widgetOptions.elementAt(_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        selectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: '홈',
              backgroundColor: Colors.indigo),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.storefront,
              color: Colors.white,
            ),
            label: '스토어',
            backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.keyboard_control,
                color: Colors.white,
              ),
              label: '더보기',
              backgroundColor: Colors.indigo),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: '내정보',
              backgroundColor: Colors.indigo),
        ],
      ),
    );
  }
}
