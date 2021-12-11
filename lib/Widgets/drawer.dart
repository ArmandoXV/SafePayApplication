import 'package:flutter/material.dart';

//The Drawer of the app
//It Should take the information form the User
//or according to the User

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              "محمد الاحمد",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.transfer_within_a_station),
            title: Text('الحساب'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/home");
            },
          ),
          ListTile(
            leading: Icon(Icons.transfer_within_a_station),
            title: Text('تحويل'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/Transfer");
            },
          ),
          ListTile(
            leading: Icon(Icons.qr_code),
            title: Text('باركود'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, "/myCode");
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('الإعدادات'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
