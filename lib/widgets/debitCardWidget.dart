import 'package:senty/widgets/HexColor.dart';
import 'package:flutter/material.dart';

class CreditCardWidget extends StatelessWidget {
  final String color;
  final String image;
  final int number;
  final String valid;

  CreditCardWidget({this.color, this.image, this.number, this.valid});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
      child: Container(
        height: 180,
        width: 300,
        decoration: BoxDecoration(
            color: HexColor(color),
            borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("images/$image", width: 50,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.more_vert, color: Colors.white,),
                ),
              ],
            ),

            SizedBox(height: 30,),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(text: TextSpan(children: [
                    TextSpan(text: "John Doe\n", style: TextStyle(color: Colors.white, fontSize: 18)),

                    TextSpan(text: "**** **** **** ${number.toString()}\n"),
                    TextSpan(text: valid, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300))
                  ],style: TextStyle(fontSize: 22))),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
