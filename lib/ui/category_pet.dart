import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets/bloc/category_bloc.dart';

class CategoryPet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, int>(
      builder: (context, number) => Container(
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                BlocProvider.of<CategoryBloc>(context).add(number = 1);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: (number == 1) ? Color(0xffFFE3B3) : Colors.white,
                    borderRadius: BorderRadius.circular(13)),
                width: 120,
                height: 120,
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 80,
                        height: 80,
                        child: Image(
                            image: AssetImage('assets/images/ucing.png'))),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Cat',
                      style: TextStyle(
                          fontFamily: 'Sarabun', fontWeight: FontWeight.w600),
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
                BlocProvider.of<CategoryBloc>(context).add(number = 2);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: (number == 2) ? Color(0xffFFE3B3) : Colors.white,
                    borderRadius: BorderRadius.circular(13)),
                width: 120,
                height: 120,
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 80,
                        height: 80,
                        child: Image(
                            image: AssetImage('assets/images/anjing.png'))),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Dog',
                      style: TextStyle(
                          fontFamily: 'Sarabun', fontWeight: FontWeight.w600),
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
                width: 120,
                height: 120,
                margin: EdgeInsets.only(top: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 80,
                        height: 80,
                        child: Image(
                            image: AssetImage('assets/images/hamster.png'))),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Hamster',
                      style: TextStyle(
                          fontFamily: 'Sarabun', fontWeight: FontWeight.w600),
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
