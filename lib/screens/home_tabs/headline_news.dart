import 'package:flutter/material.dart';
import 'package:news_app/screens/home_tabs/popular.dart';
import 'package:news_app/shared_ui/NavigationDrawer.dart';

import 'favourite.dart';

class HeadLineNews extends StatefulWidget {

  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}

class _HeadLineNewsState extends State<HeadLineNews> with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(initialIndex:0,length: 3, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HeadLine News"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: (){},),
          IconButton(icon: Icon(Icons.more_vert),onPressed: (){},)

        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(text: "WHAT's NEW",),
            Tab(text: "POPULAR",),
            Tab(text: "FAVOURITE",),
          ],
          controller:_tabController,),

      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: TabBarView(children: [
          Favourites(),
          Popular(),
          Favourites(),

        ],controller: _tabController,),
      ),
    );
  }
}
