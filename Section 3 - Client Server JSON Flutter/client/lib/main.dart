import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'detail_news_page.dart';

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
      home: PageHomeSportNews(),
    );
  }
}

final String baseUrl = "http://192.168.100.221:8000";

class PageHomeSportNews extends StatefulWidget {
  @override
  _PageHomeSportNews createState() => _PageHomeSportNews();
}

class _PageHomeSportNews extends State<PageHomeSportNews> {
  Future<List> getData() async {
    final responseData = await http.get(baseUrl + "/get_berita.php");
    return json.decode(responseData.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sport News",
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: FutureBuilder<List>(
        future: getData(),
        builder: (context, snapshot) {
          // check if the request error or not
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? new ItemNewsList(list: snapshot.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class ItemNewsList extends StatelessWidget {
  final List list;

  ItemNewsList({this.list});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: list == null ? 0 : list.length,
        itemBuilder: (context, i) {
          return Container(
            padding: const EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (context) => PageDetailNews(
                          list: list,
                          index: i,
                        )));
              },
              child: new Card(
                child: ListTile(
                  title: Text(
                    list[i]["judul_berita"],
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.redAccent),
                  ),
                  subtitle: Text("Date : ${list[i]['tgl_berita']}"),
                  trailing: Image.network(
                    baseUrl + "/images/${list[i]['gbr_berita']}",
                    fit: BoxFit.cover,
                    height: 60.0,
                    width: 60.0,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
