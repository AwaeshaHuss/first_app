import 'dart:developer';

import 'package:firstapp/utils/prefrences.dart';
import 'package:flutter/material.dart';

class ReadWriteScreen extends StatefulWidget {
  @override
  State<ReadWriteScreen> createState() => _ReadWriteScreenState();
}

class _ReadWriteScreenState extends State<ReadWriteScreen> {
  Prefrences _pref = Prefrences();

  final _control = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), (){
      setState(() {});
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('SharedPrefrencers'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _control,
              decoration: InputDecoration(
                labelText: 'Enter your text',
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Text(_pref.getString('text') ?? 'Some text'),
                SizedBox(width: 8.0),
                MaterialButton(
                  onPressed: () {
                    _pref.setString('text', _control.text.toString());
                    // log(_pref.getString('text') ?? 'Some text');
                  },
                  child: Text('Button'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}