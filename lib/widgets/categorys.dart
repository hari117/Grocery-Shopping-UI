import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categorys extends StatefulWidget {
  String cate;
 int index;
  Categorys(this.cate,this.index);

  @override
  _CategorysState createState() => _CategorysState();
}

class _CategorysState extends State<Categorys> {

  @override
  Widget build(BuildContext context) {
    print(widget.index);
    return MaterialButton(
      color:0==widget.index?Color.fromRGBO(255, 147, 60, 1):Color.fromRGBO(239,184,139,15),
      minWidth: 70,
      height: 36,
      onPressed: () {},
      child: Text(
        widget.cate,
        style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: 0==widget.index?Colors.white:Colors.black,
            letterSpacing: .5,
            height: 1.5),
        textAlign: TextAlign.center,
      ),
    );
  }
}
