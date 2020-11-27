import 'package:flutter/material.dart';
import 'package:pets/model/model_Category.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:get/get.dart';
import 'package:pets/ui/animation_cat.dart';
import 'package:google_fonts/google_fonts.dart';

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
                        width: MediaQuery.of(context).size.width - 32,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                  top: 10, bottom: 10, left: 20, right: 20),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(35),
                                child: Image.asset(
                                  'assets/kucing-munchkin.png',
                                  height: 300,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
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
                              style: GoogleFonts.sarabun(
                                  fontWeight: FontWeight.w300, fontSize: 18),
                            ),
                            Text(
                              'Snowpy',
                              style: GoogleFonts.playfairDisplay(
                                  fontWeight: FontWeight.w700, fontSize: 36),
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
                                  style: GoogleFonts.sarabun(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white54,
                                      fontSize: 12),
                                  textAlign: TextAlign.left,
                                ),
                                Text('1 Year',
                                    style: GoogleFonts.sarabun(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 14))
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
                                  style: GoogleFonts.sarabun(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white54,
                                      fontSize: 12),
                                  textAlign: TextAlign.left,
                                ),
                                Text('Female',
                                    style: GoogleFonts.sarabun(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 14))
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
                                  style: GoogleFonts.sarabun(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white54,
                                      fontSize: 12),
                                  textAlign: TextAlign.left,
                                ),
                                Text('Munchkin',
                                    style: GoogleFonts.sarabun(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 14))
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
                                  style: GoogleFonts.sarabun(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white54,
                                      fontSize: 12),
                                  textAlign: TextAlign.left,
                                ),
                                Text('White',
                                    style: GoogleFonts.sarabun(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 14))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 13,
                              ),
                              Text('12',
                                  style: GoogleFonts.sarabun(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: 12))
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
                              style: GoogleFonts.sarabun(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 20)),
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
                              fontSize: 12,
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
                                      size: 20,
                                    ),
                                    Text(
                                      'CANCEL',
                                      style: TextStyle(
                                          fontSize: 16,
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
                                onPressed: () {
                                  AwesomeDialog(
                                    context: context,
                                    animType: AnimType.SCALE,
                                    dialogType: DialogType.INFO,
                                    title: 'Are you sure ?',
                                    desc:
                                        'Will you be a good servant to this good girl ?',
                                    btnCancelOnPress: () {},
                                    btnOkOnPress: () {
                                      Get.to(AnimationCat());
                                    },
                                  )..show();
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Icon(
                                      Icons.favorite,
                                      color: Color(0xff02514A),
                                      size: 20,
                                    ),
                                    Text(
                                      ' I WANT TO ADOPT',
                                      style: TextStyle(
                                          fontSize: 16,
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
      height: 86,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 86,
            height: 86,
            margin: EdgeInsets.only(right: 15, top: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image(
                image: AssetImage(images[index]),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
