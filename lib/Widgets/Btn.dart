import 'package:ebankdemo/Constants/Theme.dart';
import 'package:flutter/material.dart';

class FloatingAction extends StatelessWidget {
  const FloatingAction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(
          context,
          "/qrscan",
        );
      },
      child: Icon(Icons.qr_code_scanner),
      elevation: 2.0,
      backgroundColor: MaterialColors.myMainColor,
    );
  }
}
