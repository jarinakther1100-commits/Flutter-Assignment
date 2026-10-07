import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage 64B"),
        backgroundColor: const Color.fromARGB(255, 107, 11, 107),
        foregroundColor: const Color.fromARGB(255, 234, 228, 235),
        // leading: Icon(Icons.home),
        actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
        ],
      ), // AppBar
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Jarin"),
              accountEmail: Text("jarinakther1100@gmail.com"),
            ), // UserAccountsDrawerHeader
            ListTile(
              leading: Icon(Icons.home),
              hoverColor: Color.fromARGB(244, 186, 86, 133),
              title: Text("homepage"),
              onTap: () {},
            ), // ListTile

            Divider(),

            ListTile(
              leading: Icon(Icons.home),
              hoverColor: Color.fromARGB(244, 182, 74, 203),
              //title: Text("homepage"), onTap:() {}),
              title: Text("Setting"),
              onTap: () {},
            ), // ListTile

            Divider(),
            Spacer(),

            ListTile(
              leading: Icon(Icons.home),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
              hoverColor: Color.fromARGB(244, 82, 70, 211),
              //title: Text("homepage"), onTap: () {}),
              title: InkWell(child: Text("Profile"), onTap: () {}),
              onTap: () {},
            ), // ListTile
          ],
        ),
      ), // Drawer
      //endDrawer: Drawer(),
      body: Center(
        child: Text(
          "Welcome to Homepage",
          style: GoogleFonts.lobster(
            textStyle: TextStyle(
              fontSize: 55,
              color: const Color.fromARGB(255, 69, 4, 50),
            ), // TextStyle
          ),
        ), // Text
      ), // Center
    ); // Scaffold
  }
}