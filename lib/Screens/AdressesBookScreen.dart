import 'package:ebankdemo/Constants/Theme.dart';
import 'package:ebankdemo/Widgets/BottomBarWidget.dart';
import 'package:ebankdemo/Widgets/ScreenHeaderWidget.dart';
import 'package:ebankdemo/Widgets/drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Models/Addresses.dart';

class ContactLists extends StatefulWidget {
  @override
  _ContactListsState createState() => _ContactListsState();
}

class _ContactListsState extends State<ContactLists> {
  List<Addresse> _userContact = [
    Addresse(
      id: 't1',
      title: 'One',
      date: '32423434',
    ),
    Addresse(
      id: 't2',
      title: 'Tow',
      date: '09837458',
    ),
    Addresse(
      id: 't1',
      title: 'Third',
      date: '2345234',
    ),
    Addresse(
      id: 't1',
      title: 'Fourth',
      date: '23452345',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(),
      backgroundColor: MaterialColors.myMainBackgroundColor,
      drawerDragStartBehavior: DragStartBehavior.start,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBarWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.qr_code_scanner),
        elevation: 2.0,
        backgroundColor: MaterialColors.myMainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ScreenHeaderWidget(),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 8,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 0,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text(
                              "Recently Used",
                              style: TextStyle(
                                color: MaterialColors.mySecondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AddressesListWidget(_userContact),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 8,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 0,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text(
                              "Syriatel Contact",
                              style: TextStyle(
                                color: MaterialColors.mySecondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AddressesListWidget(_userContact),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 8,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 0,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Text(
                              "MTN Contact",
                              style: TextStyle(
                                color: MaterialColors.mySecondary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    AddressesListWidget(_userContact),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AddressesListWidget extends StatelessWidget {
  final List<Addresse> transactions;
  AddressesListWidget(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: transactions.isEmpty
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'No Addresses added yet',
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.person,
                        size: 60,
                      ),
                      Divider(
                        color: Colors.grey,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            transactions[index].title,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            transactions[index].date,
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
