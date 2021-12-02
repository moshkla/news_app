import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context,postion){
        return Card(
          child:_drawSingleRow() ,
        );
    },itemCount: 20,

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
}
