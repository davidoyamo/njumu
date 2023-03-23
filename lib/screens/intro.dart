import 'package:flutter/material.dart';
import 'package:njumu/config/paths.dart';
import 'package:njumu/config/config.dart';
import 'package:njumu/screens/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class intro extends StatelessWidget {
  const intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(199, 85, 230, 235),
        //shoe image
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              //image asset
              Expanded(
                child: Image.asset(
                  Paths.shoe1,
                  fit: BoxFit.cover,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "We sell quality shoes and accessories to improve your style ",
                  //text
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Noto Sans',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 250, 242, 245),
                  ),
                ),
              ),
              Spacer(),
              //icon
              Expanded(
                child: IconButton(
                    icon: Icon(Icons.next_plan,
                        size: 60), //navigating to homescreen
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => homepage(),
                        ),
                      );
                    }),
              ),
              Spacer()
            ],
          ),
        ));
  }
}
