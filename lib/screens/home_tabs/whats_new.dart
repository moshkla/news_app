import 'package:flutter/material.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
           _drawHeader(),
          _drawTopStories(),
        ],
      ),
    );
  }

  Widget _drawHeader() {

    TextStyle _headerTitle=TextStyle(
      color: Colors.white,
      fontSize: 24,
      fontWeight: FontWeight.w600,
    );
    TextStyle _headerDescription=TextStyle(
      color: Colors.white,
      fontSize: 16,
    );

    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.25,
      decoration: BoxDecoration(
        image: DecorationImage(
            image:
        ExactAssetImage('assets/images/bg2.png'),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 48,right: 48),
              child: Text("Anas is the Best Man in The World",style: _headerTitle,textAlign: TextAlign.center,),
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 32,right: 32),
              child: Text("tb3n omal tb3n omal tb3n omal tb3n omal tb3n omal tb3n omal",style: _headerDescription,textAlign: TextAlign.center,),
            ),

          ],
        ),
      ),
    );
  }

 Widget _drawTopStories() {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 16),
            child: _drawSectionTitle('Top Stories'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  _drawSingleRow(),
                  _drawDevider(),
                  _drawSingleRow(),
                  _drawDevider(),
                  _drawSingleRow(),
                  _drawDevider(),
                  _drawSingleRow(),
                  _drawDevider(),
                  _drawSingleRow(),
                  _drawDevider(),
                ],
              ),
            ),
          ),
          Padding(

            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8,left: 16),
                  child: _drawSectionTitle("Recent Updates"),
                ),
                _drawRecentUpdateCard(Colors.deepOrange),
                _drawRecentUpdateCard(Colors.teal),
                SizedBox(
                  height: 84,
                ),
              ],
            ),
          ),

        ],
      ),
    );
 }

Widget  _drawSingleRow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          SizedBox(
            child:
            Image(image:
            ExactAssetImage("assets/images/bg3.png"),
              fit: BoxFit.cover,),
            width: 125,
            height: 125,
          ),
          SizedBox(width: 16,),
          Expanded(
            child: Column(
              children: <Widget>[
                Text("A cancers disease in virtually any of its types presents ",
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Anas Elmonir"),
                    Row(
                      children: <Widget>[
                        Icon(Icons.timer),
                        Text("15 min"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

    );
}

 Widget _drawDevider() {
    return Container(
      height: 2,
      width: double.infinity,
      color: Colors.grey.shade100,
    );
  }

 Widget _drawSectionTitle(String text) {
    return Text(text,style:
    TextStyle(color:
    Colors.grey.shade700,
        fontWeight: FontWeight.w600,
        fontSize: 16),
    );
  }

 Widget _drawRecentUpdateCard(Color color) {

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image:DecorationImage(image: ExactAssetImage('assets/images/bg4.png'),fit: BoxFit.cover) ,
            ),
          width: double.infinity,
          height: MediaQuery.of(context).size.height*0.25),
          Padding(
            padding: const EdgeInsets.only(left: 16,top: 16),
            child: Container(
              padding: EdgeInsets.only(
                right: 24,left: 24,top: 2,bottom: 2
              ),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text('SPORT',
                style: TextStyle(
                    color: Colors.white,fontWeight: FontWeight.w500
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16,top: 8,right: 16,bottom: 8),
            child: Text('machine learning ML strategies have effectively',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16,right: 16,top: 8,bottom: 8),
            child: Row(
              children: <Widget>[
                Icon(Icons.timer,color: Colors.grey,),
                Text(" 15 min",style:TextStyle(color: Colors.grey),),
              ],
            ),
          ),
        ],
      ),
    );
 }
}
