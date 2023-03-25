import 'package:flutter/material.dart';
import 'package:njumu/config/config.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../widgets/drawer.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

//declaring the class intropage
class homepage extends StatelessWidget {
  const homepage({super.key});
//
  @override
  Widget build(BuildContext context) {
    //returns a blank scaffold
    return Scaffold(
      drawer: drawer(),
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
        //title widget
        title: Text("Njumu", style: AppBarTheme.of(context).titleTextStyle),
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
      body: MasonryGridView.builder(
        itemCount: 6,
        gridDelegate:
            SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) =>
            Container(child: Image.asset(Paths.shoe2)),
      ),
      //gnav
      bottomNavigationBar: GNav(
        backgroundColor: Colors.amber,
        activeColor: Color.fromARGB(255, 255, 255, 255),
        tabBackgroundColor: Color.fromARGB(115, 252, 252, 252),
        curve: Curves.easeInOutExpo,
        gap: 4,
        iconSize: 30,
        rippleColor: Color.fromARGB(255, 146, 68, 68),
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
