import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pets/bloc/favorit_bloc.dart';
import 'package:pets/ui/category_pet.dart';
import 'package:pets/bloc/category_bloc.dart';
import 'content_pet.dart';

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
                    padding: EdgeInsets.only(left: 6),
                    icon: Container(
                      child: Image(
                        image: AssetImage('assets/images/ion_menu.png'),
                      ),
                    ),
                    onPressed: () {}),
                Container(
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/pet-carrier 1.png',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'AdoptMe',
                        style: TextStyle(fontFamily: 'Sarabun', fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Container(
                    width: 45,
                    height: 45,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/niki.jpg'))),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 24),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Hello,',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontFamily: 'Sarabun',
                                    color: Color(0xffdddddd),
                                    fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Wendy Watson',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontFamily: 'Playfair',
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffffffff),
                                    fontSize: 40),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  'Location,',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontFamily: 'Sarabun',
                                      color: Color(0xffdddddd),
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: TextField(
                              enabled: false,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Sarabun',
                                  fontSize: 40,
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
                          CategoryPet(),
                        ],
                      ),
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
                                    style: TextStyle(
                                      fontFamily: 'Sarabun',
                                      color: Color(0xffC6C6C6),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 30,
                                    ),
                                  ),
                                  Text(
                                    'See All',
                                    style: TextStyle(
                                      fontFamily: 'Sarabun',
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff038175),
                                    ),
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
