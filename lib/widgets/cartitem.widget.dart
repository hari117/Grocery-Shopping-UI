import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItemWidget extends StatelessWidget {
  String img;
  String name;

  CartItemWidget(this.img, this.name);

  @override
  Widget build(BuildContext context) {
    return    Container(
      width: double.infinity,
      height: 60,
margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width:70,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(230, 247, 252, 100),
                  borderRadius: BorderRadius.circular(4)),
              child: Image(
                image: AssetImage(img),
                fit:BoxFit.contain,
              ),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5,),
                Text(
                  name,
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      letterSpacing: .5,
                      height: 1.5),
                ),
                SizedBox(height: 5,),
                Text(
                  "ea",
                  style: GoogleFonts.roboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      letterSpacing: .5,
                      height: 1.5),
                ),
              ],
            ),
          ],),
          Row(
            children: [
              Text(
                "\$7.99",
                style: GoogleFonts.roboto(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    letterSpacing: .5,
                    height: 1.5),
              ),
              SizedBox(width: 35,),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: 50,height: 50,

                      alignment: Alignment.center,
                      child: Text("1"),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black26),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomLeft: Radius.circular(5))
                      ),
                    ),
                    Container(
                      width: 50,height: 50,

                      alignment: Alignment.center,
                      child: Icon(Icons.delete,color: Colors.black26),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black26),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5))
                      ),
                    )
                  ],
                ),)
            ],
          )

        ],
      ),
    );
  }
}
