import 'package:flutter/material.dart';
import 'package:pets/model/model_Category.dart';

class DetailPet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff038175),
      appBar: AppBar(
        backgroundColor: Color(0xff038175),
        elevation: 0,
        leading: IconButton(
          color: Colors.white,
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20, right: 20),
                              width: double.infinity,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Image.asset(
                                  'assets/images/kucing-munchkin.png',
                                  height: 300,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
                        ),
                        height: 330,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35))),
                    Positioned(
                        bottom: 30,
                        right: 40,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Hi, my name is',
                              style: TextStyle(
                                  fontFamily: 'Sarabun',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 20),
                            ),
                            Text(
                              'Snowpy',
                              style: TextStyle(
                                  fontFamily: 'Playfair',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 40),
                            ),
                          ],
                        ))
                  ],
                ),
                AnotherImage(images: ucing),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Age',
                                  style: TextStyle(
                                      fontFamily: 'Sarabun',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white54,
                                      fontSize: 16),
                                  textAlign: TextAlign.left,
                                ),
                                Text('1 Year',
                                    style: TextStyle(
                                        fontFamily: 'Sarabun',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 19))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Gender',
                                  style: TextStyle(
                                      fontFamily: 'Sarabun',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white54,
                                      fontSize: 16),
                                  textAlign: TextAlign.left,
                                ),
                                Text('Female',
                                    style: TextStyle(
                                        fontFamily: 'Sarabun',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 19))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Breed',
                                  style: TextStyle(
                                      fontFamily: 'Sarabun',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white54,
                                      fontSize: 16),
                                  textAlign: TextAlign.left,
                                ),
                                Text('Munchkin',
                                    style: TextStyle(
                                        fontFamily: 'Sarabun',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 19))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Color',
                                  style: TextStyle(
                                      fontFamily: 'Sarabun',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white54,
                                      fontSize: 16),
                                  textAlign: TextAlign.left,
                                ),
                                Text('White',
                                    style: TextStyle(
                                        fontFamily: 'Sarabun',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 19))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              ),
                              Text('12',
                                  style: TextStyle(
                                      fontFamily: 'Sarabun',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: 19))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 5),
                          child: Text('About',
                              style: TextStyle(
                                  fontFamily: 'Sarabun',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 25)),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Container(
                        height: 75.0,
                        child: SingleChildScrollView(
                          child: Text(
                            'Snowpy is munchkin cat. She’s known for being quiet and sweet. Althought Snowpy tend to be relaxed and easygoing, She runs very fast and can climb trees easily, She is very smart because she never forgets whatever I teach her. ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: ButtonTheme(
                            minWidth: 90,
                            height: 50,
                            child: RaisedButton(
                                color: Color(0xffF1F0F5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Icon(
                                      Icons.close,
                                      color: Color(0xff02514A),
                                      size: 30,
                                    ),
                                    Text(
                                      'CANCEL',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff02514A)),
                                    )
                                  ],
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ButtonTheme(
                            minWidth: 90,
                            height: 50,
                            child: RaisedButton(
                                color: Color(0xffFFE3B3),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Icon(
                                      Icons.favorite,
                                      color: Color(0xff02514A),
                                      size: 30,
                                    ),
                                    Text(
                                      'I WANT TO ADOPT',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff02514A)),
                                    )
                                  ],
                                )),
                          ),
                        )
                      ],
                    )
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

class AnotherImage extends StatelessWidget {
  final List<String> images;

  AnotherImage({this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 130,
            margin: EdgeInsets.only(right: 15, top: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                image: AssetImage(images[index]),
                fit: BoxFit.fitHeight,
              ),
            ),
          );
        },
      ),
    );
  }
}
