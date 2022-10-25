import 'package:flutter/material.dart';

class pge7 extends StatefulWidget {
  const pge7({Key? key}) : super(key: key);

  @override
  State<pge7> createState() => _pge7State();
}

class _pge7State extends State<pge7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Showdioalog1(context);
              },
              child: Icon(Icons.quick_contacts_dialer_outlined)),
          Divider(),
          ElevatedButton(
              onPressed: () {
                Showdioalog2(context);
              },
              child: Icon(Icons.quick_contacts_dialer_outlined)),
          Divider(),
          ElevatedButton(
              onPressed: () {
                Showsnak(context);
              },
              child: Icon(Icons.quick_contacts_dialer_outlined)),
          Divider(),
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.black, Colors.white, Colors.red],
                    stops: [0.3, 0.6, 0.9]),
                border: Border.all(color: Colors.green, width: 1.00),
                borderRadius: BorderRadius.circular(5)),
            margin: EdgeInsets.all(5.00),
            padding: EdgeInsets.all(5.00),
            child: Text(
              'romany',
              style: TextStyle(fontSize: 50.00, color: Colors.yellow),
            ),
          )
        ],
      ),
    );
  }

  Showdioalog1(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              title: Text("this mu dialog"),
              children: [
                SimpleDialogOption(
                  onPressed: () {},
                  child: Text('bebebeb'),
                ),
                SimpleDialogOption(
                  onPressed: () {},
                  child: Text('bebebeb'),
                ),
                SimpleDialogOption(
                  onPressed: () {},
                  child: Text('bebebeb'),
                ),
                Divider(),
                Row(
                  children: [
                    Expanded(
                        child: TextButton(
                      onPressed: () {},
                      child: Text('ok'),
                    )),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: TextButton(
                      onPressed: () {},
                      child: Text('ok'),
                    )),
                  ],
                )
              ],
            ));
  }

  Showdioalog2(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("this mu dialog"),
              content: Text('U Nedd thoisisisi'),
              actions: [
                TextButton(onPressed: () {}, child: Text('ok')),
                TextButton(onPressed: () {}, child: Text('cancel')),
              ],
            ));
  }

  Showsnak(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('romany'),
      action: SnackBarAction(
        onPressed: () {},
        label: 'try again',
      ),
    ));
  }
}
