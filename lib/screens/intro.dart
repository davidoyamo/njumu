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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            //image asset
            Image.asset(Paths.nikes),
            SizedBox(
              height: 20,
            ),
            Text(
              "We sell quality shoes and accessories to improve your style ",
              //text
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Noto Sans',
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 250, 242, 245),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //icon
            IconButton(
                icon:
                    Icon(Icons.next_plan, size: 60), //navigating to homescreen
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => homepage(),
                    ),
                  );
                }),
            Spacer()
          ],
        ));
  }
}
