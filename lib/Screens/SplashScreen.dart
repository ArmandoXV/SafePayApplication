import 'dart:ui';
import 'package:ebankdemo/Constants/Theme.dart';
import 'package:ebankdemo/Widgets/LabeledRadoiWidget.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(),
      ),
      Container(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: MaterialColors.myMainColor,
                  borderRadius: new BorderRadius.vertical(
                    top: new Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _loginBtn(context),
                        SizedBox(width: 40),
                        _chooseLanguageBtn(context),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]));
  }

  TextButton _loginBtn(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(MaterialColors.bgColorScreen),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/login');
      },
      child: Text(
        "Log in",
        style: TextStyle(
          color: Color(MaterialColors.myMainColor.value),
          fontSize: 25,
        ),
      ),
    );
  }

  TextButton _chooseLanguageBtn(BuildContext context) {
    return TextButton(
      onPressed: () {
        languageSheet(context);
      },
      child: Text(
        "Choose Language",
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    );
  }

  Future languageSheet(BuildContext context) {
    bool _isRadioSelected = false;

    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: MaterialColors.myMainBackgroundColor,
          margin: EdgeInsets.only(top: 10),
          height: 150,
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Choose Language",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: LabeledRadio(
                        label: 'اللغة العربية',
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        value: false,
                        groupValue: _isRadioSelected,
                        onChanged: (bool newValue) {
                          setState(() {
                            _isRadioSelected = newValue;
                          });
                        },
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: LabeledRadio(
                        label: 'English',
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        value: true,
                        groupValue: _isRadioSelected,
                        onChanged: (bool newValue) {
                          setState(
                            () {
                              _isRadioSelected = newValue;
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
