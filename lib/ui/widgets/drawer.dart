import 'package:flutter/material.dart';
import 'package:movie_app/ui/screens/video_screen.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Nesflis',
              style: TextStyle(color: Colors.red, fontSize: 25),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Last Viewed'),
            onTap: () => {
              Navigator.of(context).pop(),
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => VideoApp()))
            },
          ),
        ],
      ),
    );
  }
}
