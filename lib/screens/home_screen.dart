import 'package:flutter/material.dart';
import 'package:news_app/shared_ui/NavigationDrawer.dart';
import 'home_tabs/favourite.dart';
import 'home_tabs/popular.dart';
import 'home_tabs/whats_new.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{



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
        title: Text("Explore"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: (){},),
          _popUpMenu(context),

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
          WhatsNew(),
          Popular(),
          Favourites(),

        ],controller: _tabController,),
      ),
    );
  }

  Widget _popUpMenu<popUpList>(BuildContext context) {
    return PopupMenuButton<WhyFarther>(
      onSelected: (WhyFarther result) {

      },
      itemBuilder: (BuildContext context) =>
      <PopupMenuEntry<WhyFarther>>[
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.Help,
          child: Text('Help'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.About,
          child: Text('About'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.Contact,
          child: Text('Contact'),
        ),
        const PopupMenuItem<WhyFarther>(
          value: WhyFarther.Settings,
          child: Text('Settings'),
        ),
      ],
    );
  }
}

enum WhyFarther { Help, About, Contact, Settings }
