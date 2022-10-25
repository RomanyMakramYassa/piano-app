import 'package:flutter/material.dart';

import 'bb/classes.dart';

class page5 extends StatelessWidget {
  const page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
          itemBuilder: (BuildContext context, int index) => Container(
            padding: EdgeInsets.all(5),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10.00)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  child: Container(
                    child: Image(
                      image: AssetImage('image/15.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.00,
                ),
                Text(names()[index].name),
                SizedBox(
                  height: 10.00,
                ),
                Text(names()[index].phone),
              ],
            ),
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
          itemCount: names().length,
        ),
      ),
    );
  }

  List<user> names() {
    return [
      user('Romany', '01212406915'),
      user('Nour', '01203715648'),
      user('Love', '01203715648'),
      user("Nourhan", '01203715648'),
      user('Nour', '01203715648'),
      user('Love', '01203715648'),
      user("Nourhan", '01203715648')
    ];
  }
}
