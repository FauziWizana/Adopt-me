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
      height: height,
      width: 100,
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
                size: 20,
              ),
              decoration: BoxDecoration(
                color: Colors.black45,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            right: 10,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('assets/brian.jpg'))),
            ),
          ),
          Positioned(
            right: 20,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage('assets/artur.jpg'))),
            ),
          ),
          Positioned(
            right: 30,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/kesbor.jpg'))),
            ),
          ),
        ],
      ),
    );
  }
}
