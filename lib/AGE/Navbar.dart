import 'package:sihpro/AGE/home1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Navbar());
}

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(padding: EdgeInsets.zero),
          UserAccountsDrawerHeader(
            accountName: Text('Maharanjitham'),
            accountEmail: Text('maharanjitham63@gamail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assests/images/mr.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assests/images/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            title: Text("Favourites"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.pink,
            ),
            title: Text("Share"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: Text("Settings"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.people_alt_rounded,
              color: Colors.cyanAccent,
            ),
            title: Text("Friends"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline_rounded,
              color: Colors.cyan,
            ),
            title: Text("About Us"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.policy,
              color: Colors.green,
            ),
            title: Text("Policies"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app_rounded,
              color: Colors.black54,
            ),
            title: Text("Exit"),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
