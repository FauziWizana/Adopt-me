import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pets/ui/success_page.dart';
import 'dart:async';
import 'package:get/get.dart';

class AnimationCat extends StatefulWidget {
  @override
  _AnimationCatState createState() => _AnimationCatState();
}

class _AnimationCatState extends State<AnimationCat> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () async {
      Get.to(SuccessPage(), transition: Transition.fade);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff038175),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.5,
                child: Lottie.asset('assets/lf20_Zz37yH.json')),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child: Text(
                'WAIT A MINUTE!, WE`RE LOOKING FOR A SUITABLE BOX FOR YOUR PET !',
                style: GoogleFonts.sarabun(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
