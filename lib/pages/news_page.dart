import 'package:flutter/material.dart';


class NewsPage extends StatefulWidget {

  String tabName = null;

  NewsPage({this.tabName});

  @override
  State<StatefulWidget> createState() {
    return new NewsPageState();
  }
}

class NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return new Text("hello");
  }

}