import 'package:flutter/material.dart';

class SubTitleDescriptionWidget extends StatelessWidget {

  String titleDescription;

  SubTitleDescriptionWidget({@required this.titleDescription});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(titleDescription, style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,color: Colors.black),textAlign: TextAlign.start,),
    );
  }
}
