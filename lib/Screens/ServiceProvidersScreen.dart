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
          children: [
            ScreenHeaderWidget(),
            Container(
              height: 600,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: IconButton(
                      icon: Image(
                        image: AssetImage("assets/imgs/billers/BBSFIcon.png"),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/provider");
                        print("BBSF");
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: IconButton(
                      icon: Image(
                        image:
                            AssetImage("assets/imgs/billers/alBarakaIcon.png"),
                      ),
                      onPressed: () {
                        print("BBSF");
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: IconButton(
                      icon: Image(
                        image: AssetImage("assets/imgs/billers/CBSIcon.png"),
                      ),
                      onPressed: () {
                        print("BBSF");
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: IconButton(
                      icon: Image(
                        image: AssetImage("assets/imgs/billers/REBIcon.png"),
                      ),
                      onPressed: () {
                        print("BBSF");
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: IconButton(
                      icon: Image(
                        image: AssetImage("assets/imgs/billers/SIIBIcon.png"),
                      ),
                      onPressed: () {
                        print("BBSF");
                      },
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: IconButton(
                      icon: Image(
                        image: AssetImage("assets/imgs/billers/BBSFIcon.png"),
                      ),
                      onPressed: () {
                        print("BBSF");
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
