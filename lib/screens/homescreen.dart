import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceryshoppingapp/widgets/categorys.dart';
import 'package:groceryshoppingapp/widgets/itemcard.dart';
import 'package:groceryshoppingapp/widgets/popular.widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = [
    "assets/images/banana.png",
    "assets/images/durain.png",
    "assets/images/lemon.png",
    "assets/images/orange.png"
  ];
  List<String> names = ["banana", "durain", "lemon", "orange"];
  List<String> cate = ["Fruits", "Vegetables", "Seafood", "Non-veg"];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        title: Text(
          "Special Offers",
          style: GoogleFonts.roboto(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              letterSpacing: .5,
              height: 1.5),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Popular Today",
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    letterSpacing: .5,
                    height: 1.5),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 210,
                width: double.infinity,
                child: popularList(),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 45,
                width: double.infinity,
                child: categorysList(),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 210,
                width: double.infinity,
                child: fruitsCateList(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Special OFfers"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.web_asset_outlined),label: "myCart"),
        ],
       selectedItemColor: Color.fromRGBO(255, 147, 60, 1),

       currentIndex: index,
        onTap: (value){
          index=value;
          setState(() {

          });
        },
      ),
    );
  }

  popularList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return PopularCatWidget(
          items[items.length - (index + 1)],
        );
      },
    );
  }

  categorysList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: cate.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Categorys(cate[index], index),
        );
      },
    );
  }

  fruitsCateList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ItemCard(items[index], names[index]);
      },
    );
  }
}
