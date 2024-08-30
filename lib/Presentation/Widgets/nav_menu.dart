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
            DrawerHeader(
              padding: EdgeInsets.zero,
            child: Container(
              color: Colors.greenAccent,
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('SKILL UP NOW',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text('lets start')
                  ],
                ),
              ),
            )
            ),
            const ListTile(
              title: Text('Episodes'),
              leading: Icon(Icons.featured_play_list),
            ),
            const SizedBox(height: 3,),
            const ListTile(
              title: Text('About'),
              leading: Icon(Icons.messenger),
            ),
          ],
        ),
      ),
    );
  }
}