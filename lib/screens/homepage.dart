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
    //returns a scaffold
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
              Icons.dark_mode,
              size: 30,
            ),
          ),
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Divider(
            height: 10,
            thickness: 1,
            color: Colors.black,
            indent: 10,
            endIndent: 10,
          ),

          Padding(
            padding:
                const EdgeInsets.only(left: 50.0, right: 50, top: 5, bottom: 5),
            child: Row(
              children: [
                //filter icon
                Row(
                  children: [
                    Icon(Icons.sort),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "filter",
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                ),
                Spacer(),
                //search icon
                Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "search",
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                ),
                Spacer(),
                //shopping cart icon

                Row(
                  children: [
                    Icon(Icons.shopping_cart),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "cart",
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 10,
            thickness: 1,
            color: Colors.black,
            indent: 10,
            endIndent: 10,
          ),
          //grid view with a fixed crossaxis count
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
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
            ),
          ),
        ],
      ),

      //gnav
      bottomNavigationBar: GNav(
        backgroundColor: Colors.white,
        activeColor: Color.fromARGB(255, 177, 48, 48),
        tabBackgroundColor: Color.fromARGB(115, 252, 252, 252),
        curve: Curves.easeInOutExpo,
        gap: 4,
        iconSize: 30,
        rippleColor: Color.fromARGB(255, 199, 74, 74),
        duration: Duration(milliseconds: 500),
        tabs: [
          GButton(icon: Icons.home, text: 'Home'),
          GButton(
            icon: Icons.trending_up,
            text: "Trends",
          ),
          GButton(icon: Icons.favorite, text: 'Favorite'),
          GButton(icon: Icons.search, text: 'Search'),
        ],
      ),
    );
  }
}
