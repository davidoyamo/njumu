import 'package:flutter/material.dart';
import 'package:njumu/config/paths.dart';
import 'package:njumu/config/config.dart';
import 'package:njumu/screens/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        //shoe image
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              //image asset
              Expanded(
                child: Image.asset(
                  Paths.logo,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //text
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Text(
                  "Footwear and Accessories",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Karla',
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 250, 242, 245),
                  ),
                ),
              ),
              Spacer(),
              //icon
              Padding(
                padding: EdgeInsets.all(10),
                child: IconButton(
                    icon: Icon(Icons.next_plan, size: 40),
                    //navigating to homescreen
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    }),
              ),
              Text('Shop',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Karla',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 250, 242, 245),
                  )),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ));
  }
}
