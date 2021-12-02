import 'package:flutter/material.dart';
import 'package:news_app/shared_ui/NavigationDrawer.dart';
class TwitterFeed extends StatefulWidget {
  @override
  _TwitterFeedState createState() => _TwitterFeedState();
}

class _TwitterFeedState extends State<TwitterFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Twitter Feed'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: (){},)
        ],
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(itemBuilder: (context,position){
        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Card(
            child:Column(
              children: <Widget>[
                _CardHeader(),
                _CardBody(),
                _drawLine(),
                _CardFooter(),
              ],
            ),
          ),
        );
      },itemCount: 20,),
    );
  }
  Widget _CardHeader(){
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          CircleAvatar(
           backgroundImage: ExactAssetImage('assets/images/bg5.png'),
            radius: 24,
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('Anas Elmonir'),
                  SizedBox(width: 8,),
                  Text('@anas_elmonir',style: TextStyle(color: Colors.grey)),
                ],
              ),
              SizedBox(height: 8,),
              Text('Fri, 12 May 2019 * 14.3',style: TextStyle(color: Colors.grey))
            ],
          ),
        ],
      ),
    );
  }
  Widget _CardBody(){
    return Padding(
      padding: const EdgeInsets.only(left: 16,right: 16,bottom: 8),
      child: Text('The fitness function is a non-linear function which coverage both binary (linear) and more class labels',style: TextStyle(color: Colors.grey.shade900,fontSize: 16),
      )
    );
  }
  Widget _CardFooter(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(icon: Icon(Icons.repeat),color: Colors.orange, onPressed: (){}),
              Text('24'),
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(onPressed: (){}, child: Text('SHARE',style: TextStyle(color: Colors.orange),)),
              FlatButton(onPressed: (){}, child: Text('OPEN',style: TextStyle(color: Colors.orange))),
            ],
          ),
        ],
      ),
    );
  }

 Widget _drawLine() {
    return Container(
      height: 1,
      color: Colors.grey.shade200,
      margin: EdgeInsets.only(top: 16),
    );
 }

}
