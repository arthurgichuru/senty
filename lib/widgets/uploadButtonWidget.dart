import 'package:flutter/material.dart';



class UploadButtonWidget extends StatelessWidget {

  String buttonText;
  Color buttonColor;
  Function buttonOnpressed;

  UploadButtonWidget({@required this.buttonText, this.buttonColor, this.buttonOnpressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.grey)
        ),
        onPressed: buttonOnpressed,
        color: buttonColor,
        elevation: 10,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(buttonText, style: TextStyle(color: Colors.white,fontSize: 14),),
            ),
            SizedBox(width: 100,),
            Icon(Icons.cloud_upload, color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
