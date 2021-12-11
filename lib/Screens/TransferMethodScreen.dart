import 'package:ebankdemo/Constants/Theme.dart';
import 'package:ebankdemo/Widgets/BottomBarWidget.dart';
import 'package:ebankdemo/Widgets/Btn.dart';
import 'package:ebankdemo/Widgets/ScreenHeaderWidget.dart';
import 'package:ebankdemo/Widgets/drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TransferMethodScreen extends StatefulWidget {
  @override
  _TransferMethodScreenState createState() => _TransferMethodScreenState();
}

class _TransferMethodScreenState extends State<TransferMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerWidget(),
      backgroundColor: MaterialColors.myMainBackgroundColor,
      drawerDragStartBehavior: DragStartBehavior.start,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingAction(),
      bottomNavigationBar: new BottomBarWidget(),
      body: Column(
        children: [
          Expanded(
            flex: 0,
            child: new ScreenHeaderWidget(),
          ),
          Expanded(
            flex: 0,
            child: SizedBox(
              height: 30,
            ),
          ),
          Flexible(
            child: Container(
              height: 240,
              padding: EdgeInsets.all(10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 8,
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15, left: 15, right: 15),
                      child: Row(
                        children: [
                          Text(
                            "Transfer",
                            style: TextStyle(
                              color: MaterialColors.mySecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                      child: ListTile(
                        onTap: () {
                          Navigator.pushNamed(
                              context, "/transferbetweenMyAccounts");
                        },
                        leading: Icon(Icons.account_balance_wallet_rounded),
                        title: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Between my Accounts',
                            style: TextStyle(
                              color: MaterialColors.mySecondary,
                            ),
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                      child: ListTile(
                        onTap: () {
                          Navigator.pushNamed(context, "/transfer");
                        },
                        leading: Icon(Icons.account_balance),
                        title: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Within the Bank',
                            style: TextStyle(
                              color: MaterialColors.mySecondary,
                            ),
                          ),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
