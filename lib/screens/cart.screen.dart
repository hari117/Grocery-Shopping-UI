import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryshoppingapp/widgets/cartitem.widget.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int index = 0;
  List<String> items = [
    "assets/images/banana.png",
    "assets/images/durain.png",
    "assets/images/lemon.png",
    "assets/images/orange.png"
  ];
  List<String> names = ["banana", "durain", "lemon", "orange"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        title: Text(
          "My Cart",
          style: GoogleFonts.roboto(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              letterSpacing: .5,
              height: 1.5),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Special OFfers"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.web_asset_outlined), label: "myCart"),
        ],
        selectedItemColor: Color.fromRGBO(255, 147, 60, 1),
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(height: 350, child: cartItemBuilder()),
            Divider(color: Colors.black26,),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total",
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        letterSpacing: .5,
                        height: 1.5),
                  ),
                  Text(
                    "\$22.46",
                    style: GoogleFonts.roboto(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        letterSpacing: .5,
                        height: 1.5),
                  ),
                ],
              ),
            ),
            SizedBox(height: 170,),
            MaterialButton(
              color: Color.fromRGBO(255, 147, 60, 1),
              minWidth: double.infinity,
              height: 50,
              onPressed: () {},
              child: Text(
                "Checkout",
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    letterSpacing: .5,
                    height: 1.5),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  cartItemBuilder() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (content, index) {
          return CartItemWidget(items[index],names[index]);
        });
  }
}
