import 'package:day2/HOME1.dart';
import 'package:day2/page3.dart';
import 'package:day2/page4.dart';
import 'package:day2/page5.dart';
import 'package:day2/page6.dart';
import 'package:day2/page7.dart';
import 'package:day2/page8.dart';
import 'package:flutter/material.dart';

class home2 extends StatefulWidget {
  const home2({Key? key}) : super(key: key);

  @override
  State<home2> createState() => _home2State();
}

class _home2State extends State<home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
            child: Container(
              height: 200,
              child: Column(
                children: [
                  CircleAvatar(
                      child: Image(
                    image: AssetImage('image/11.png'),
                    height: 50,
                    width: 50,
                  )),
                  Text("Nourhan@gmail.com"),
                  Text('Nour')
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_filled),
            title: Text('love'.toUpperCase()),
            onTap: () {
              setState(() {
                cur = 0;
              });

              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.inbox),
            title: Text('inbox'.toUpperCase()),
            onTap: () {
              setState(() {
                cur = 1;
              });
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.wb_auto_rounded),
            title: Text('about'.toUpperCase()),
            onTap: () {
              setState(() {
                cur = 2;
              });
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: CircleAvatar(
              child: Image(
                image: AssetImage('image/10.jpg'),
              ),
            ),
            title: Text(' My Nour'.toUpperCase()),
            onTap: () {
              setState(() {
                cur = 3;
              });
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('logout'.toUpperCase()),
            onTap: () {
              setState(() {
                cur = 4;
              });
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.wifi_tethering_rounded),
            title: Text('things'.toUpperCase()),
            onTap: () {
              setState(() {
                cur = 5;
              });
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.man_sharp),
            title: Text('allll'.toUpperCase()),
            onTap: () {
              setState(() {
                cur = 6;
              });
              Navigator.pop(context);
            },
          ),
        ],
      )),
      body: pages(),
    );
  }

  int cur = 0;
  Widget pages() {
    switch (cur) {
      case 0:
        return page3();
      case 1:
        return page4();
      case 2:
        return const page5();
      case 3:
        return page6();
      case 4:
        return const pge7();
      case 5:
        return const page8();
      case 6:
        return const home1();
      default:
        return Container();
    }
  }
}
