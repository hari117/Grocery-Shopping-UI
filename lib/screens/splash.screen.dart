import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SpalshScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  child: Image(
                    image: AssetImage(
                      "assets/images/illustration1.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Text(
                  "It's time to shop!",
                  style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.normal,
                      letterSpacing: .5),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 50,
                  child: Text(
                    "Buy online the most coolest products for your life!",
                    style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(134, 134, 134, 50),
                        letterSpacing: .5,
                        height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 120,),
                MaterialButton(
                  color: Color.fromRGBO(255, 147, 60,1),
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () {


                  },
                  child:Text(
                    "Let's start",
                    style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color:Colors.white,
                        letterSpacing: .5,
                        height: 1.5),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
