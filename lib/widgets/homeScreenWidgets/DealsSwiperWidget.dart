import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class DealsSwiperWidget extends StatelessWidget {


  Function dealoneOnpressed;
  Function dealtwoOnpressed;
  Function dealthreeOnpressed;
  Function dealfourOnpressed;
  Function dealfiveOnpressed;

  DealsSwiperWidget({@required  this.dealoneOnpressed, this.dealtwoOnpressed, this.dealthreeOnpressed, this.dealfourOnpressed,this.dealfiveOnpressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.blue,
        height: 185,
        child: new Swiper.children(
          autoplay: true,
          pagination: new SwiperPagination(
              builder: new DotSwiperPaginationBuilder(
                  color: Colors.grey,
                  activeColor: Colors.blue,
                  size: 10.0,
                  activeSize: 10.0)),
          children: <Widget>[
            GestureDetector(
              onTap:dealoneOnpressed,
              child: Image.asset(
                "images/artcaffeDeal.jpg",
                fit: BoxFit.fill,
              ),
            ),
            GestureDetector(
              onTap:dealtwoOnpressed,
              child: Image.asset(
                "images/dealTwo.jpg",
                fit: BoxFit.fill,
              ),
            ),
            GestureDetector(
              onTap:dealthreeOnpressed,
              child: Image.asset(
                  "images/dealThree.jpeg", fit: BoxFit.fill
              ),
            ),
            GestureDetector(
              onTap: dealfourOnpressed,
              child: Image.asset(
                  "images/dealFour.jpg", fit: BoxFit.fill
              ),
            ),
            GestureDetector(
              onTap:dealfiveOnpressed,//
              child: Image.asset(
                  "images/dealFive.jpeg", fit: BoxFit.fill
              ),
            )
          ],
        ),
      ),
    );
  }
}
