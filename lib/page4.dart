import 'package:day2/bb/classes.dart';
import 'package:flutter/material.dart';

class page4 extends StatelessWidget {
  const page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.pink,
              child: CircleAvatar(
                child: Image(
                  image: AssetImage('image/6.jpg'),
                ),
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ListTile(
                      leading: Icon(Icons.person),
                      title: Text(names()[index].name),
                      subtitle: Text(
                        names()[index].phone,
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.call),
                        onPressed: () {},
                      ),
                    ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: names().length),
          ],
        ),
      )),
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
