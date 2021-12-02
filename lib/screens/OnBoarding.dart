import 'package:flutter/material.dart';
import 'package:news_app/pagemodel.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home_screen.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<PageModel> pages ;
  ValueNotifier<int> _pagevalueNotifier=ValueNotifier(0);
  void _addPages() {
    // ignore: deprecated_member_use
    pages = List<PageModel>();
    pages.add(PageModel("Welcome",
        "This my explaination of my app so please read this carefully",
        "assets/images/bg4.png", Icons.ac_unit));
    pages.add(PageModel( "Home",
        "The Home page Contains All news you are seeking for",
        "assets/images/bg5.png",  Icons.account_balance));
    pages.add(PageModel("News",
        "The News page represent the spescific News you want in your Area",
        "assets/images/bg2.png",Icons.track_changes));
    pages.add(PageModel("Alarm",
        "The Alarm page gives you notifications about the News you are intersted in ",
        "assets/images/bg3.png", Icons.access_alarm));
  }
  List<String> imags=[
        "assets/images/bg4.png",
        "assets/images/bg5.png",
        "assets/images/bg2.png",
        "assets/images/bg3.png",

  ];
  List<IconData> icons=[
    Icons.ac_unit,
    Icons.account_balance,
    Icons.track_changes,
    Icons.access_alarm

  ];
  List<String> titles=[
    "Welcome",
    "Home",
    "News",
    "Alarm",

  ];
  List<String> descriptions=[
    "This my explaination of my app so please read this carefully",
    "The Home page Contains All news you are seeking for",
    "The News page represent the spescific News you want in your Area",
    "The Alarm page gives you notifications about the News you are intersted in ",

  ];

  @override
  Widget build(BuildContext context) {
    _addPages();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
              itemBuilder:(context,index){
                return Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: ExactAssetImage(pages[index].image,
                        ),
                            fit: BoxFit.cover,


                        ),

                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[
                        Center(),
                        Transform.translate(
                            child: Icon(pages[index].icon,
                              color: Colors.yellow,
                              size: 150,),
                        offset:Offset(0,-50),
                        ),

                        Text(pages[index].title ,style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                            letterSpacing:16,
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10 ,left: 48,right: 48),
                          child: Text(pages[index].description , style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,

                          ),
                          textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                  ],
                );


              },
              itemCount:pages.length,
            onPageChanged: (index){
                _pagevalueNotifier.value=index;
            },


              ),
          Transform.translate(
            offset: Offset(0, 175),
            child: Align(
              alignment: Alignment.center,

              child:_displayWidgetIndicator(pages.length)
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,

            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Colors.grey.shade700,
                  child: Text("Start",style: TextStyle(color: Colors.white ,fontSize: 16,fontWeight: FontWeight.bold,letterSpacing: 1),),
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                        builder: (context){
                          //TODO Ubdate seen
                          _updateSeen();
                      return HomeScreen();
                    },
                    ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
 /* List<Widget> _drawPageInDirectores(){
    List<Widget> _widgets=List<Widget>();
    for(var i in pages){
      _widgets.add(_drawCircle(Colors.yellow));
    }
    return _widgets;
  }
  Widget _drawCircle(Color color){
   return Container(
      margin: EdgeInsets.only(right: 8),

      width: 15,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,

      ),
    );
  }*/
Widget _displayWidgetIndicator(int length){
  return PageViewIndicator(
    pageIndexNotifier: _pagevalueNotifier,
    length: length,
    normalBuilder: (animationController, index) => Circle(
      size: 10.0,
      color: Colors.yellow,
    ),
    highlightedBuilder: (animationController, index) => ScaleTransition(
      scale: CurvedAnimation(
        parent: animationController,
        curve: Curves.ease,
      ),
      child: Circle(
        size: 14.0,
        color: Colors.black,
      ),
    ),
  );
}

  void _updateSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('seen',true);

  }
}
