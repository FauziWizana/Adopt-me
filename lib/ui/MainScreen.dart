import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets/bloc/favorit_bloc.dart';
import 'package:pets/ui/category_pet.dart';
import 'package:pets/bloc/category_bloc.dart';
import 'content_pet.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    const backgroundColor = const Color(0xff038175);
    TextEditingController controller = TextEditingController(text: 'Sleman YK');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<CategoryBloc>(
            create: (BuildContext context) => CategoryBloc(1),
          ),
          BlocProvider<FavoritBloc>(
            create: (context) => FavoritBloc(false),
          )
        ],
        child: Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    padding: EdgeInsets.only(),
                    icon: Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/ion_menu.png'))),
                    ),
                    onPressed: () {}),
                Container(
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/pet-carrier 1.png',
                        width: 16,
                        height: 16,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'AdoptMe',
                        style: GoogleFonts.sarabun(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    width: 38,
                    height: 38,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/niki.jpg'))),
                  ),
                ),
              ],
            ),
            backgroundColor: backgroundColor,
          ),
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Column(children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'Hello,',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.sarabun(
                                color: Color(0xffdddddd), fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Text(
                            'Wendy Watson',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.playfairDisplay(
                                fontWeight: FontWeight.w700,
                                color: Color(0xffffffff),
                                fontSize: 32),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 30),
                              child: Text(
                                'Location,',
                                style: GoogleFonts.sarabun(
                                    color: Color(0xffdddddd), fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20, left: 30),
                          child: TextField(
                            enabled: false,
                            style: GoogleFonts.sarabun(
                                color: Colors.white,
                                fontSize: 32,
                                fontWeight: FontWeight.w700),
                            decoration: InputDecoration(
                                disabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white38)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.amber)),
                                prefixIcon: Icon(
                                  Icons.location_on,
                                  color: Color(0xff94DD8B),
                                  size: 35,
                                ),
                                fillColor: Colors.white10),
                            controller: controller,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: CategoryPet(),
                        ),
                        SizedBox(
                          height: 24,
                        )
                      ],
                    ),
                    Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 30),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 16, left: 16),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    '32 Result',
                                    style: GoogleFonts.sarabun(
                                      color: Color(0xffC6C6C6),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 24,
                                    ),
                                  ),
                                  Text(
                                    'See All',
                                    style: GoogleFonts.sarabun(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff038175)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Center(
                              child: ContentPet(
                                containerHeight: 480,
                                containerWidth: 390,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(40)))),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
