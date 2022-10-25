import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Day3 extends StatelessWidget {
  const Day3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color.fromRGBO(119, 136, 153, 1.0),
                    Color.fromRGBO(176, 196, 222, 1.0),
                    Color.fromRGBO(230, 230, 250, 1.0),
                    Color.fromRGBO(230, 230, 250, 1.0),
                    Color.fromRGBO(176, 196, 222, 1.0),
                    Color.fromRGBO(119, 136, 153, 1.0),
                  ],
                ),
              ),
              child: Center(
                //padding: EdgeInsets.all(10.00),
                child: Column(
                  children: [
                    Text(
                      "pianoooooooo",
                      style: TextStyle(
                          fontSize: 40.00, fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () async {
                        final player = AudioPlayer();
                        await player.play(AssetSource('note1.mp3'));

                        print('DOOOOOOOOOOOO');
                      },
                      child: Card(
                        child: Container(
                          height: 60,
                          width: 300,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(169, 117, 227, 1.0),
                                Color.fromRGBO(114, 22, 147, 1.0),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Text('C'),
                              Spacer(),
                              Text('Do'),
                              Spacer(),
                              Text('1')
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.00,
                    ),
                    GestureDetector(
                      onTap: () {
                        final player = AudioPlayer();
                        player.play(AssetSource('note2.mp3'));
                        print('reeeeeeeeeeeeeeeeee');
                      },
                      child: Container(
                        height: 60,
                        width: 280,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.blue, Colors.cyan],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Text('D'),
                            Spacer(),
                            Text('RE'),
                            Spacer(),
                            Text('2')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.00,
                    ),
                    InkWell(
                      onTap: () {
                        final player = AudioPlayer();
                        player.play(AssetSource('note3.wav'));
                        print('meeeeeeeeeeee');
                      },
                      child: Container(
                        height: 60,
                        width: 260,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.blueAccent, Colors.lightBlue],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Text('E'),
                            Spacer(),
                            Text('MI'),
                            Spacer(),
                            Text('3')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.00,
                    ),
                    InkWell(
                      onTap: () {
                        final player = AudioPlayer();
                        player.play(AssetSource('note4.wav'));

                        print('FAFAFAFAF');
                      },
                      child: Container(
                        height: 60,
                        width: 240,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.green, Colors.greenAccent],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Text('F'),
                            Spacer(),
                            Text('FA'),
                            Spacer(),
                            Text('4')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.00,
                    ),
                    InkWell(
                      onTap: () {
                        final player = AudioPlayer();
                        player.play(AssetSource('note5.wav'));

                        print('sssssssssssoooo');
                      },
                      child: Container(
                        height: 60,
                        width: 220,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.amber, Colors.yellow],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Text('G'),
                            Spacer(),
                            Text('So'),
                            Spacer(),
                            Text('5')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.00,
                    ),
                    InkWell(
                      onTap: () {
                        final player = AudioPlayer();
                        player.play(AssetSource('note3.wav'));
                        print('LAAAAAAAAAAAAAA');
                      },
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.red, Colors.deepOrange],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Text('H'),
                            Spacer(),
                            Text('LA'),
                            Spacer(),
                            Text('6')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.00,
                    ),
                    InkWell(
                      onTap: () {
                        final player = AudioPlayer();
                        player.play(AssetSource('note6.wav'));
                        print('SIIIIIIIIIIII');
                      },
                      child: Container(
                        height: 60,
                        width: 180,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Colors.brown, Colors.blueGrey],
                              tileMode: TileMode.decal),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Text('I'),
                            Spacer(),
                            Text('SI'),
                            Spacer(),
                            Text('7')
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.00,
                    ),
                    InkWell(
                      onTap: () {
                        final player = AudioPlayer();
                        player.play(AssetSource('note7.wav'));

                        print('ddddddddd00000');
                      },
                      child: Container(
                        height: 60,
                        width: 160,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.pink,
                                Colors.white30,
                              ],
                              tileMode: TileMode.repeated),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Text('J'),
                            Spacer(),
                            Text('Do'),
                            Spacer(),
                            Text('8')
                          ],
                        ),
                      ),
                    )
                  ],
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            )));
    ;
  }
}
