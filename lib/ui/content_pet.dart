import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets/bloc/favorit_bloc.dart';
import 'package:pets/ui/Image_bulet.dart';
import 'package:pets/ui/detail_pet.dart';

class ContentPet extends StatefulWidget {
  final double containerHeight;
  final double containerWidth;

  ContentPet({this.containerHeight, this.containerWidth});

  @override
  _ContentPetState createState() => _ContentPetState();
}

class _ContentPetState extends State<ContentPet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.containerHeight,
      width: widget.containerWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0xff0BB68C),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              child: Image.asset(
                'assets/images/kucing-munchkin.png',
                height: 300,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Snowpy',
                    style: TextStyle(
                      fontFamily: 'Playfair',
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 35, bottom: 10),
                child: BlocBuilder<FavoritBloc, bool>(
                  builder: (BuildContext context, suka) => GestureDetector(
                    onTap: () {
                      BlocProvider.of<FavoritBloc>(context).add(suka = !suka);
                    },
                    child: Container(
                      child: Icon(
                        (suka == false)
                            ? Icons.favorite_border
                            : Icons.favorite,
                        color: (suka == false)
                            ? Color(0xff0BB68C)
                            : Colors.red[600],
                        size: 43,
                      ),
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                spreadRadius: 4,
                                blurRadius: 10,
                                offset: Offset(0, 4))
                          ]),
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, left: 10),
                    child: Text(
                      'Munchkin Cat',
                      style: TextStyle(
                        fontFamily: 'Sarabun',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: ImageBulet(
                      height: 40,
                      width: 40,
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/paw.png',
                      width: 40,
                      height: 40,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      '1 Year',
                      style: TextStyle(
                        fontFamily: 'Sarabun',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Image.asset(
                      'assets/images/women.png',
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      'Girl',
                      style: TextStyle(
                        fontFamily: 'Sarabun',
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPet()));
                      },
                      child: Text(
                        'See Details',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'Sarabun',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailPet()));
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
