import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets/bloc/category_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryPet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, int>(
      builder: (context, number) => Container(
        child: Row(
          children: <Widget>[
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/Kustomisasi.png'))),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<CategoryBloc>(context).add(number = 1);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: (number == 1) ? Color(0xffFFE3B3) : Colors.white,
                    borderRadius: BorderRadius.circular(13)),
                width: 64,
                height: 64,
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 32,
                        height: 32,
                        child: Image(image: AssetImage('assets/ucing.png'))),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Cat',
                        style: GoogleFonts.sarabun(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: (number == 1)
                                ? Color(0xff855606)
                                : Colors.grey)),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<CategoryBloc>(context).add(number = 2);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: (number == 2) ? Color(0xffFFE3B3) : Colors.white,
                    borderRadius: BorderRadius.circular(13)),
                width: 64,
                height: 64,
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 32,
                        height: 32,
                        child: Image(image: AssetImage('assets/anjing.png'))),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Dog',
                      style: GoogleFonts.sarabun(
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                        color: (number == 2) ? Color(0xff855606) : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<CategoryBloc>(context).add(number = 3);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: (number == 3) ? Color(0xffFFE3B3) : Colors.white,
                    borderRadius: BorderRadius.circular(13)),
                width: 64,
                height: 64,
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 32,
                        height: 32,
                        child: Image(image: AssetImage('assets/hamster.png'))),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Hamster',
                      style: GoogleFonts.sarabun(
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                        color: (number == 3) ? Color(0xff855606) : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                BlocProvider.of<CategoryBloc>(context).add(number = 4);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: (number == 4) ? Color(0xffFFE3B3) : Colors.white,
                    borderRadius: BorderRadius.circular(13)),
                width: 64,
                height: 64,
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 32,
                        height: 32,
                        child: Image(image: AssetImage('assets/bunny.png'))),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Rabbit',
                      style: GoogleFonts.sarabun(
                        fontWeight: FontWeight.w600,
                        fontSize: 10,
                        color: (number == 4) ? Color(0xff855606) : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
