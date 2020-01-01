import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: PageHomeReturnData(),
    );
  }
}

class PageHomeReturnData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Text("Return Data"),
            backgroundColor: Colors.deepOrangeAccent),
        body: Center(
          child: SelectionButton(),
        ));
  }
}

class SelectionButton extends StatelessWidget {
  Future<void> navigateAndDisplaySelectedItem(BuildContext context) async {
    final resultOption = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => SelectionOptionScreen()));

    Scaffold.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text("$resultOption")));
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        navigateAndDisplaySelectedItem(context);
      },
      child: Text("Please click me tp see an option"),
    );
  }
}

class SelectionOptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose and Option"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context, "Selected option is YES");
                },
                color: Colors.deepOrangeAccent,
                textColor: Colors.white,
                child: Text("Yes"),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context, "Selected option is NO");
                  },
                  color: Colors.deepOrangeAccent,
                  textColor: Colors.white,
                  child: Text("No"),
                ))
          ],
        ),
      ),
    );
  }
}
