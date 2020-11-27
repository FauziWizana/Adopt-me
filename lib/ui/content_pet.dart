import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets/bloc/favorit_bloc.dart';
import 'package:pets/ui/Image_bulet.dart';
import 'package:pets/ui/detail_pet.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart' as geget;

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 300,
          width: MediaQuery.of(context).size.width - 32,
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              'assets/kucing-munchkin.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width - 32,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              color: Color(0xff0BB68C)),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Snowpy',
                            style: GoogleFonts.playfairDisplay(
                              fontSize: 36,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, right: 32, bottom: 10),
                        child: BlocBuilder<FavoritBloc, bool>(
                          builder: (BuildContext context, suka) =>
                              GestureDetector(
                            onTap: () {
                              BlocProvider.of<FavoritBloc>(context)
                                  .add(suka = !suka);
                            },
                            child: Container(
                              child: Icon(
                                (suka == false)
                                    ? Icons.favorite_border
                                    : Icons.favorite,
                                color: (suka == false)
                                    ? Color(0xff0BB68C)
                                    : Colors.red[600],
                                size: 16,
                              ),
                              width: 32,
                              height: 32,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Munchkin Cat',
                              style: GoogleFonts.sarabun(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 25,
                            ),
                            child: ImageBulet(
                              height: 22,
                              width: 22,
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
                              'assets/paw.png',
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              '1 Year',
                              style: GoogleFonts.sarabun(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Image.asset(
                              'assets/women.png',
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(
                              'Girl',
                              style: GoogleFonts.sarabun(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                geget.Get.to(DetailPet(),
                                    transition: geget.Transition.zoom);
                              },
                              child: Text(
                                'See Details',
                                style: GoogleFonts.sarabun(
                                    decoration: TextDecoration.underline,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            GestureDetector(
                              onTap: () {
                                geget.Get.to(DetailPet(),
                                    transition: geget.Transition.zoom);
                              },
                              child: Icon(
                                Icons.arrow_forward,
                                color: Colors.black,
                                size: 22,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
