import 'package:flutter/material.dart';
import 'package:passing_data_value/model/user_model.dart';
import 'page_get_data.dart';

class PagePassingValue extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _PagePassingValue();
  }
}

class _PagePassingValue extends State<PagePassingValue> {
  var _userController = new TextEditingController();
  var _emailController = new TextEditingController();

  void sendDataToAnotherPage(String username, String email) {
    var user = new UserModel(username: username, email: email);
    var route = new MaterialPageRoute(
        builder: (BuildContext context) => PageGetValue(user: user));

    Navigator.push(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Passing Value Page"),
          backgroundColor: Colors.black,
        ),
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  child: Text(
                    "Please input data ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                  padding: EdgeInsets.only(bottom: 20.0),
                ),
                TextFormField(
                  controller: _userController,
                  decoration: InputDecoration(hintText: "Input Username"),
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(hintText: "Input Email"),
                ),
                MaterialButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: () {
                    sendDataToAnotherPage(
                        _userController.text, _emailController.text);
                  },
                  child: Text("Submit"),
                )
              ],
            ),
          ),
        ));
  }
}
