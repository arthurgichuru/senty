import 'package:flutter/material.dart';


class TitleDescriptionWidget extends StatelessWidget {

  String titleDescription;

  TitleDescriptionWidget({@required this.titleDescription});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(titleDescription, style: TextStyle(fontSize: 20,color: Colors.blueAccent),textAlign: TextAlign.center,),
    );
  }
}
