import 'package:flutter/material.dart';
import 'package:news_app/shared_ui/NavigationDrawer.dart';
class FaceBookFeed extends StatefulWidget {
  @override
  _FaceBookFeedState createState() => _FaceBookFeedState();
}

class _FaceBookFeedState extends State<FaceBookFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook Feed'),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _drawHeader(),
                _drawTitle(),
                _drawHashTags(),
                _drawBody(),
                _drawFooter(),
              ],
            ),
          ),
        );
      },itemCount: 20,),
    );
  }
  Widget _drawHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: ExactAssetImage('assets/images/bg4.png'),
                    radius: 24,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Anas Elmonir',style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      ),),
                      SizedBox(height: 8,),
                      Text('Fri, 12 May 2019 * 14.3',style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
        Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.favorite,color: Colors.grey,), onPressed: (){}),
            Transform.translate(
                offset: Offset(-8, 0),
                child: Text('25',
                  style: TextStyle(color: Colors.grey,
                      fontSize: 16),
                ))
          ],
        ),
      ],
    );

  }
  Widget _drawTitle() {
    return Padding(padding: const EdgeInsets.only(bottom: 8,right: 16,left: 16),
      child: Text('we also talk about the future like robots',style: TextStyle(
        color: Colors.grey.shade900,

      ),),);
  }

  Widget _drawHashTags() {
    return Container(
      child: Wrap(
        children: <Widget>[
          FlatButton(onPressed: (){}, child: Text('#advance',style: TextStyle(
            color: Colors.orange,
          ),))
        ],
      ),
    );
  }
  Widget _drawBody() {
    return SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height*0.35,
        child: Image(image: ExactAssetImage('assets/images/bg4.png'),fit: BoxFit.cover,));
  }
  Widget _drawFooter() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              FlatButton(onPressed: (){}, child: Text('10 COMMENTS',style: TextStyle(color: Colors.orange),)),

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
}
