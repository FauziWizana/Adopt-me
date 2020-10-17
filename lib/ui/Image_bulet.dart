import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageBulet extends StatelessWidget {
  String image;
  double height;
  double width;

  ImageBulet({this.image, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      child: Stack(
        children: <Widget>[
          Positioned(
            right: 0,
            child: Container(
              width: width,
              height: height,
              child: Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                color: Colors.black45,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: 25,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/brian.jpg'))),
            ),
          ),
          Positioned(
            right: 45,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/artur.jpg'))),
            ),
          ),
          Positioned(
            right: 65,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/kesbor.jpg'))),
            ),
          ),
        ],
      ),
    );
  }
}
