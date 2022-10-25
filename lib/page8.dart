import 'package:flutter/material.dart';

class page8 extends StatefulWidget {
  const page8({Key? key}) : super(key: key);

  @override
  State<page8> createState() => _page8State();
}

class _page8State extends State<page8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
          builder: (context) => Center(
                child: ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => Wrap(
                                children: [
                                  ListTile(
                                    leading: Icon(
                                      Icons.share,
                                    ),
                                    title: Text('Share'),
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.copy,
                                    ),
                                    title: Text('Share'),
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.paste,
                                    ),
                                    title: Text('Share'),
                                  ),
                                ],
                              ));
                    },
                    child: Icon(Icons.abc)),
              )),
    );
  }
}
