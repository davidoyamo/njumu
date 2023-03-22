import 'package:flutter/material.dart';
import 'package:njumu/config/config.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../widgets/drawer.dart';

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
          backgroundColor: Colors.white,
          centerTitle: true,
          leading:
              //builder for the icon menu
              Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu, color: Color.fromARGB(255, 12, 23, 29)),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          //title widget
          title: Text(
            "Njumu",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
          //actions widget

          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: MasonryGridView.builder(
          itemCount: 6,
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) => Container(
            child: Expanded(child: Image.asset(Paths.nikes)),
          ),
        ));
  }
}
