import 'package:ebankdemo/Constants/Theme.dart';
import 'package:flutter/material.dart';

class ScreenHeaderWidget extends StatelessWidget {
  const ScreenHeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 0,
          child: Container(
            margin: EdgeInsets.only(
              right: 16,
              top: 16,
              left: 16,
            ),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(16),
                  child: Text(
                    "E-Bank",
                    style: TextStyle(
                      color: MaterialColors.myMainColor,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 0,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  "Bank Services",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
