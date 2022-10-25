import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  TextEditingController? _textEditingController;
  GlobalKey<FormState>? _key;
  @override
  void initState() {
    // TODO: implement initState
    _textEditingController = TextEditingController();
    _key = GlobalKey();
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController?.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.00),
            child: Form(
                key: _key,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                          labelText: 'text',
                          prefixIcon: Icon(Icons.add),
                          suffixIcon: Icon(Icons.ac_unit),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.00),
                          )),
                      validator: (value) =>
                          value!.isEmpty ? 'enter yaaad' : null,
                    ),
                    SizedBox(
                      height: 10.00,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          if (_key!.currentState!.validate()) {
                            print('no no no no');
                          }
                        },
                        child: Text('press')),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
