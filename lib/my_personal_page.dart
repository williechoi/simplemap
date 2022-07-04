import 'package:flutter/material.dart';

class MyPersonalPage extends StatefulWidget {
  const MyPersonalPage({Key? key}) : super(key: key);

  @override
  State<MyPersonalPage> createState() => _MyPersonalPageState();
}

class _MyPersonalPageState extends State<MyPersonalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Row(
            children: <Widget>[
              SizedBox(
                width: 30.0,
                height: 120.0,
                child: Image.network(
                    'https://blog.texasbar.com/files/2011/02/ConstanceMims1.jpg'),
              ),
              SizedBox(
                width: 60.0,
                height: 120.0,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '최형석',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                    ),
                    Text(
                      'polipoke@naver.com',
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '개인/보안',
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 12.0,
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  '앱으로 PC 로그인',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
