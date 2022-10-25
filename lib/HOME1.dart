import 'package:day2/page3.dart';
import 'package:day2/page4.dart';
import 'package:day2/page5.dart';
import 'package:flutter/material.dart';

class home1 extends StatefulWidget {
  const home1({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _home1();
}

class _home1 extends State<home1> {
  @override
  int index = 0;
  String val = 'ios';

  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.person),
            title: const Text('romany texttest'),
            actions: [
              IconButton(
                  onPressed: () => textnamww('addd'),
                  icon: const Icon(Icons.add_circle)),
              IconButton(
                  onPressed: () => textnamww('addd'),
                  icon: const Icon(Icons.mail_lock)),
              IconButton(
                  onPressed: () => textnamww('addd'),
                  icon: const Icon(Icons.search_off)),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.chat),
                  text: 'chats',
                ),
                Tab(
                  icon: Icon(Icons.photo),
                  text: 'photo',
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                  text: 'video',
                ),
                Tab(
                  icon: Icon(Icons.phone),
                  text: 'phone',
                ),
                Tab(
                  icon: Icon(Icons.warning_amber),
                  text: 'worning',
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (ind) {
              setState(() {
                index = ind;
              });
            },
            currentIndex: index,
            // selectedItemColor: Colors.orange,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.business_sharp), label: 'work'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.access_alarms_rounded), label: 'import'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bakery_dining_outlined), label: 'mmmm'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.save_alt), label: 'save'),
            ],
            fixedColor: Colors.deepPurpleAccent,
            type: BottomNavigationBarType.fixed,
          ),
          body: TabBarView(
            children: [
              page1(),
              page2(),
              const page3(),
              const page4(),
              const page5(),
            ],
          ),
        ));
  }

  navi() {
    switch (index) {
      case 0:
        return Center(
          child: Container(
            color: Colors.red,
            child: const Text('home'),
          ),
        );
      case 1:
        return Center(
          child: Container(
            color: Colors.blueGrey,
            child: const Text('work'),
          ),
        );
      case 2:
        return Center(
          child: Container(
            color: Colors.yellowAccent,
            child: const Text('imort'),
          ),
        );
      case 3:
        return Center(
          child: Container(
            color: Colors.pink,
            child: const Text('imsddsxs'),
          ),
        );
    }
  }

  void textnamww(String s) {
    print(s);
  }

  Widget page1() => Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$val'),
            DropdownButton<String>(
                value: val,
                items: [
                  DropdownMenuItem(
                    child: Text('ios'),
                    onTap: () {},
                    value: 'ios',
                  ),
                  DropdownMenuItem(
                    child: Text('android'),
                    onTap: () {},
                    value: 'andriod',
                  ),
                  DropdownMenuItem(
                    child: Text('mac'),
                    onTap: () {},
                    value: 'mac',
                  ),
                  DropdownMenuItem(
                    child: Text('windows'),
                    onTap: () {},
                    value: 'windows',
                  ),
                ],
                onChanged: (valu) {
                  setState(() {
                    val = valu!;
                  });
                })
          ],
        ),
      ));
  bool valio = true;
  String rval = 'android';
  Widget page2() => Scaffold(
        body: Center(
          child: Column(
            children: [
              valio
                  ? Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.red,
                    )
                  : Container(
                      height: 100,
                      width: double.infinity,
                      color: Colors.black,
                    ),
              SizedBox(
                height: 30.00,
              ),
              CheckboxListTile(
                value: valio,
                onChanged: (val) {
                  setState(() {
                    valio = val!;
                  });
                },
                title: Text('show red or blak'),
                subtitle: Text('describtion'),
              ),
              Divider(),
              SizedBox(
                height: 10.00,
              ),
              RadioListTile(
                value: 'android',
                groupValue: rval,
                onChanged: (val) {
                  setState(() {
                    rval = val as String;
                  });
                },
                title: const Text('android'),
              ),
              RadioListTile(
                value: 'ios',
                groupValue: rval,
                onChanged: (val) {
                  setState(() {
                    rval = val as String;
                  });
                },
                title: const Text('ios'),
              ),
              RadioListTile(
                value: 'mac',
                groupValue: rval,
                onChanged: (val) {
                  setState(() {
                    rval = val as String;
                  });
                },
                title: const Text('mac'),
              ),
              RadioListTile(
                value: 'window',
                groupValue: rval,
                onChanged: (val) {
                  setState(() {
                    rval = val as String;
                  });
                },
                title: const Text('window'),
              ),
            ],
          ),
        ),
      );
}
