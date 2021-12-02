import 'dart:math';

import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  List<Color> colorsList=[
    Colors.teal,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.cyan,
    Colors.orange,
  ];
  Random x=Random();
  Color _getRandomColor(){
    return colorsList[x.nextInt(colorsList.length)];
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,position){
      return Card(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              _authorRow(),
              SizedBox(height: 16,),
              _newsItemRow(),
            ],
          ),
        ),
      );
    },itemCount: 20
    );
  }

Widget  _authorRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage('assets/images/bg2.png'),fit: BoxFit.cover),
                shape: BoxShape.circle,
              ),width: 50,
                height: 50,
              margin: EdgeInsets.only(right: 16),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Anas ELmonir",style: TextStyle(color: Colors.grey),),
                SizedBox(height: 6,),
                Row(
                  children: <Widget>[
                    Text("15 min.",style: TextStyle(color: Colors.grey),),

                    Text("Life Style",style: TextStyle(color: _getRandomColor())),
                  ],
                )
              ],
            ),
          ],
        ),
        IconButton(icon: Icon(Icons.bookmark_border),
            onPressed: (){},
        color: Colors.grey,),
      ],
    );

}

 Widget _newsItemRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
        decoration: BoxDecoration(
            image:DecorationImage(
                image: ExactAssetImage('assets/images/bg4.png'),
                fit: BoxFit.cover)),
       width:125,
          height: 125,
          margin: EdgeInsets.only(right: 16),
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Text('Wrapper methods are  intensive.',style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16
              ),),
              Text('challenges Gene classification as the area of research',style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                color: Colors.grey,
                height: 1.25

              )
              ),
            ],
          ),
        ),
      ],
    );
 }

}
