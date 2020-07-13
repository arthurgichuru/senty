import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class LoopWidget extends StatelessWidget {

  String buttonText;
  Color buttonColor;
  Function buttonOnpressed;

  LoopWidget({@required this.buttonText, this.buttonColor, this.buttonOnpressed});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: buttonOnpressed,
        child: Column(
          children: <Widget>[
            Container(
                child: Image.asset('images/ncbaLoopmain.jpeg',fit: BoxFit.fill, )
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}

Future <void> _launchLoop()async {
  const url = 'https://www.cbaloop.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
