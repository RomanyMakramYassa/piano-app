import 'package:flutter/material.dart';

class page6 extends StatefulWidget {
  const page6({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _page6();
}

class _page6 extends State<page6> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _control.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  PageController _control = PageController();
  int Curent = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (val) {
          setState(() {
            Curent = val;
          });
        },
        children: pw,
        controller: _control,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.forward),
        onPressed: () {
          if (Curent != pw.length - 1) {
            _control.jumpToPage(Curent + 1);

            // _control.nextPage(duration: Duration(microseconds: 100), curve: Curves.fastLinearToSlowEaseIn, );
          } else
            _control.jumpToPage(0);
        },
      ),
    );
  }

  List<Widget> pw = [
    Container(
      child: Image(
        image: AssetImage('image/1.jpg'),
      ),
    ),
    Container(
      child: Image(
        image: AssetImage('image/2.jpg'),
      ),
    ),
    Container(
      child: Image(
        image: AssetImage('image/3.jpg'),
      ),
    ),
    Container(
      child: Image(
        image: AssetImage('image/4.jpg'),
      ),
    ),
    Container(
      child: Image(
        image: AssetImage('image/5.jpg'),
      ),
    ),
    Container(
      child: Image(
        image: AssetImage('image/6.jpg'),
      ),
    ),
    Container(
      child: Image(
        image: AssetImage('image/7.jpg'),
      ),
    ),
    Container(
      child: Image(
        image: AssetImage('image/8.jpg'),
      ),
    ),
    Container(
      child: Image(
        image: AssetImage('image/9.jpg'),
      ),
    ),
    Container(
      child: Image(
        image: AssetImage('image/12.jpg'),
      ),
    ),
    Container(
      child: Image(
        image: AssetImage('image/13.jpg'),
      ),
    ),
    Container(
      child: Image(
        image: AssetImage('image/14.jpg'),
      ),
    ),
    Container(
      child: Image(
        image: AssetImage('image/15.png'),
      ),
    ),
  ];
}
