import 'package:ebankdemo/Constants/Theme.dart';
import 'package:ebankdemo/Widgets/AccountWidget.dart';
import 'package:ebankdemo/Widgets/BottomBarWidget.dart';
import 'package:ebankdemo/Widgets/Btn.dart';
import 'package:ebankdemo/Widgets/ScreenHeaderWidget.dart';
import 'package:ebankdemo/Widgets/drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MaterialColors.myMainBackgroundColor,
      extendBody: true,
      appBar: AppBar(),
      drawer: DrawerWidget(),
      drawerDragStartBehavior: DragStartBehavior.start,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingAction(),
      bottomNavigationBar: new BottomBarWidget(),
      body: Container(
        child: Column(
          children: [
            ScreenHeaderWidget(),
            Flexible(
              flex: 6,
              child: Container(
                child: _accountCardSlider(),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                child: _cardIndicator(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

// Page Component
  Row _cardIndicator(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: accountList.asMap().entries.map((entry) {
        return GestureDetector(
          onTap: () => _controller.animateToPage(entry.key),
          child: Container(
            width: 12.0,
            height: 12.0,
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : MaterialColors.myMainColor)
                    .withOpacity(_current == entry.key ? 0.9 : 0.4)),
          ),
        );
      }).toList(),
    );
  }

  CarouselSlider _accountCardSlider() {
    return CarouselSlider(
      carouselController: _controller,
      options: CarouselOptions(
        initialPage: 2,
        enableInfiniteScroll: false,
        enlargeCenterPage: true,
        aspectRatio: 1.3,
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        },
      ),
      items: accountList,
    );
  }

  final List<AccountWidget> accountList = [
    AccountWidget(
      accountName: "Saving Account",
      accountNumber: "092734572345",
      balance: 7500000,
      key: null,
    ),
    AccountWidget(
      accountName: "Current account",
      accountNumber: "092734572345",
      balance: 7500000,
    ),
  ];
}
