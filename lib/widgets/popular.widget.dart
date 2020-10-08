import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularCatWidget extends StatelessWidget {
  String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
          width: 180,
          height: 210,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                offset: Offset(1, 10),
                color: Colors.black26,
                spreadRadius: .1,
                blurRadius: 2)
          ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15),
                      width: 127,
                      height: 75,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(230, 247, 252, 100),
                          borderRadius: BorderRadius.circular(4)),
                      child: Image(
                        image: AssetImage(imgUrl),
                      ),
                    ),
                    Text(
                      "Nevel Orange",
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          letterSpacing: .5,
                          height: 1.5),
                    ),
                    Text(
                      "ea",
                      style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          letterSpacing: .5,
                          height: 1.5),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$4.99",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              letterSpacing: .5,
                              height: 1.5),
                        ),
                        Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(133, 186, 108, 100),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Positioned(
                  left: 0,
                  top: 5,
                  child: Image(
                    image: AssetImage("assets/icons/Top.png"),
                  ),
                )
              ],
            ),
          ),
        );


  }

  PopularCatWidget(this.imgUrl);
}
