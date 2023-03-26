import 'package:flutter/material.dart';
import 'package:njumu/config/paths.dart';
import 'package:njumu/models/itemlist.dart';
import '../models/item.dart';
import '../widgets/drawer.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../widgets/itemtile.dart';

//declaring the class intropage
class HomePage extends StatelessWidget {
  const HomePage({super.key});
//
  @override
  Widget build(BuildContext context) {
    //returns a blank scaffold
    return Scaffold(
      drawer: const drawer(),
      appBar: AppBar(
        leading:
            //builder for the icon menu
            Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),

        //actions widget

        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              size: 30,
            ),
          ),
        ],
      ),
      //grid view with a fixed crossaxis count
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          final item = itemList[index];
          return ItemTile(
            item: item,
          );
        },
      ),

      //gnav
      bottomNavigationBar: GNav(
        backgroundColor: Colors.amber,
        activeColor: Color.fromARGB(255, 255, 255, 255),
        tabBackgroundColor: Color.fromARGB(115, 252, 252, 252),
        curve: Curves.easeInOutExpo,
        gap: 4,
        iconSize: 30,
        rippleColor: Color.fromARGB(255, 199, 74, 74),
        duration: Duration(milliseconds: 500),
        tabs: [
          GButton(icon: Icons.home, text: 'Home'),
          GButton(icon: Icons.favorite, text: 'Favorite'),
          GButton(icon: Icons.search, text: 'Search'),
        ],
      ),
    );
  }
}
