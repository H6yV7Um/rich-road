import 'package:flutter/material.dart';
import 'package:rich_road/common/StringResources.dart';
import 'package:rich_road/pages/news_page.dart';


class HomePage extends StatefulWidget {

  String title = null;

  HomePage({title}) {
    this.title = title;
  }

  @override
  State<StatefulWidget> createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final List<Tab> tabs = [
      new Tab(
        child: new Text(StringResources.ZHISHU),
      ),
      new Tab(
        child: new Text(StringResources.DAZONG),
      )
    ];
    return new DefaultTabController(
        length: tabs.length,
        child: new Scaffold(
          appBar: new AppBar(
            title: new Text(widget.title),
            bottom: new TabBar(
                isScrollable: true,
                tabs: tabs
            )
          ),
          body: new TabBarView(
              children: tabs.map((Tab tab) {
                return new Center(
                  child: new NewsPage(
                    tabName: tab.child.key.toString()
                  ),
                );
              }).toList()
          )
        )
    );
  }

}