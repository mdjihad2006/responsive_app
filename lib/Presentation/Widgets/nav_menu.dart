import 'package:flutter/material.dart';

class NavMenu extends StatelessWidget {
  const NavMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.account_circle),
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              title: Text('Home'),
              tileColor: Colors.deepPurpleAccent,
              leading: Icon(Icons.account_circle),
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.account_circle),
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.account_circle),
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.account_circle),
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.account_circle),
            )
          ],
        ),
      ),
    );
  }
}