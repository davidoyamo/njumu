import 'package:flutter/material.dart';
import 'package:njumu/config/paths.dart';
import 'package:njumu/screens/LandingPage.dart';

class drawer extends StatelessWidget {
  const drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.amber,
      child: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          //drawer header
          DrawerHeader(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              Paths.logo,
              fit: BoxFit.contain,
            ),
          )),
          Divider(
            color: Colors.black,
            height: 10,
            thickness: 10,
          ),
          SizedBox(
            height: 20,
          ),
          //listtiles
          ListTile(
            leading: Icon(Icons.search_outlined, size: 40),
            title: Text(
              'Search',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
          ),
          GestureDetector(
            child: ListTile(
              leading: Icon(Icons.home, size: 40),
              title: Text(
                'Home',
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LandingPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info, size: 40),
            title: Text(
              'About',
            ),
          ),
          ListTile(
            leading: Icon(Icons.call, size: 40),
            title: Text(
              'Contact',
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_2, size: 40),
            title: Text(
              'Login/Sign-up',
            ),
          ),
        ],
      ),
    );
  }
}
