import 'package:ebankdemo/Constants/Theme.dart';
import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 60,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.account_balance,
                color: MaterialColors.myMainColor,
              ),
              onPressed: () {
                while (Navigator.canPop(context)) {
                  Navigator.pop(context);
                }
                Navigator.pushReplacementNamed(context, "/home");
              },
            ),
            Container(
              margin: EdgeInsets.only(right: 50),
              child: IconButton(
                icon: Icon(Icons.credit_card_outlined),
                color: MaterialColors.myMainColor,
                onPressed: () {
                  while (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                  Navigator.pushReplacementNamed(
                      context, "/servicesProvidersWidget");
                },
              ),
            ),
            IconButton(
              icon: Icon(Icons.menu_book_outlined),
              color: MaterialColors.myMainColor,
              onPressed: () {
                while (Navigator.canPop(context)) {
                  Navigator.pop(context);
                }
                Navigator.pushNamed(context, '/contactLists');
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              color: MaterialColors.myMainColor,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
