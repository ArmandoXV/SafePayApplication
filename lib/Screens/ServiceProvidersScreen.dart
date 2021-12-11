import 'package:ebankdemo/Constants/Theme.dart';
import 'package:ebankdemo/Widgets/BottomBarWidget.dart';
import 'package:ebankdemo/Widgets/Btn.dart';
import 'package:ebankdemo/Widgets/ScreenHeaderWidget.dart';
import 'package:ebankdemo/Widgets/drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ServicesProvidersWidget extends StatefulWidget {
  ServicesProvidersWidget({Key? key}) : super(key: key);

  @override
  _ServicesProvidersWidgetState createState() =>
      _ServicesProvidersWidgetState();
}

class _ServicesProvidersWidgetState extends State<ServicesProvidersWidget> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
