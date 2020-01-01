import 'package:flutter/material.dart';

final String baseUrl = "http://192.168.100.221:8000";

class PageDetailNews extends StatefulWidget {
  List list;
  int index;

  PageDetailNews({this.list, this.index});

  @override
  _PageDetailNews createState() => _PageDetailNews();
}

class _PageDetailNews extends State<PageDetailNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.list[widget.index]["judul_berita"]}"),
        backgroundColor: Colors.red,
      ),
      body: new ListView(
        children: <Widget>[
          Image.network(
              baseUrl + "/images/${widget.list[widget.index]["gbr_berita"]}"),
          Container(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Title : ${widget.list[widget.index]["judul_berita"]}",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "Date : ${widget.list[widget.index]['tgl_berita']}",
                        style: TextStyle(color: Colors.redAccent),
                      )
                    ],
                  ),
                ),
                Icon(Icons.star, color: Colors.redAccent),
              ],
            ),
          ),
          new Container(
            padding: const EdgeInsets.all(32.0),
            child: Text(
              widget.list[widget.index]["isi_berita"],
              softWrap: true,
            ),
          )
        ],
      ),
    );
  }
}
