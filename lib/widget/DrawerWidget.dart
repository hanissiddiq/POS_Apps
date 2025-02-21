import 'package:animated_login_v1/pages/login.dart';
import 'package:animated_login_v1/pages/regis.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawerwidget extends StatelessWidget {
  const Drawerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueAccent),
              accountName: Text(
                "Programmer",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "Hanissiddiq10@gmail.com",
                style: TextStyle(fontSize: 16),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/avatar/Avatar1.jpg"),
              ),
            ),
          ),
          //List Tile
          ListTile(
            leading: const Icon(
              CupertinoIcons.home,
              color: Colors.blueAccent,
              size: 24.0,
            ),
            title: Text(
              "Home",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          //List Tile
          ListTile(
            leading: const Icon(
              CupertinoIcons.person,
              color: Colors.blueAccent,
              size: 24.0,
            ),
            title: Text(
              "My Account",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          //List Tile
          ListTile(
            leading: const Icon(
              CupertinoIcons.cart_fill,
              color: Colors.blueAccent,
              size: 24.0,
            ),
            title: Text(
              "My Cart",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          //List Tile
          ListTile(
            leading: const Icon(
              CupertinoIcons.heart,
              color: Colors.blueAccent,
              size: 24.0,
            ),
            title: Text(
              "My Wish list",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          //List Tile
          ListTile(
            leading: const Icon(
              CupertinoIcons.settings,
              color: Colors.blueAccent,
              size: 24.0,
            ),
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),

          //List Tile
          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: Colors.blueAccent,
              size: 24.0,
            ),
            title: Text(
              "Logout",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

// coding pindah page
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
// coding pindah page
          ),
        ],
      ),
    );
  }
}
