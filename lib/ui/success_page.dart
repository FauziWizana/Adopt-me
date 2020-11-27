import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:pets/ui/MainScreen.dart';

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff038175),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'YOU HAVE BEEN SUCCESSFULLY ADOPTED A CAT',
              style: GoogleFonts.sarabun(color: Colors.white, fontSize: 18),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            GestureDetector(
              onTap: () {
                Get.offAll(MainScreen());
              },
              child: Text(
                'BACK TO HOME',
                style: GoogleFonts.sarabun(color: Colors.white, fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
