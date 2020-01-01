import 'package:flutter/material.dart';
import 'package:passing_data_value/model/user_model.dart';

class PageGetValue extends StatefulWidget {
  final UserModel user;

  PageGetValue({Key key, this.user}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return new _PageGetValue();
  }
}

class _PageGetValue extends State<PageGetValue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Value"),
        backgroundColor: Colors.black,
      ),
      body: Container(
          child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              child: Text(
                " PASSED VALUE",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              padding: EdgeInsets.fromLTRB(5.0, 15, 5, 20),
            ),
            Padding(
              child: Text(
                "Username : " + widget.user.username,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              padding: EdgeInsets.all(10.0),
            ),
            Padding(
              child: Text(
                "Email : " + widget.user.email,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              padding: EdgeInsets.all(10.0),
            ),
          ],
        ),
      )),
    );
  }
}
