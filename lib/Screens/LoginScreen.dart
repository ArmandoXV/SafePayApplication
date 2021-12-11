import 'package:flutter/material.dart';

import 'package:ebankdemo/Constants/Theme.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MaterialColors.myMainColor,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
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
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Text(
                    "Sing in First",
                  ),
                ],
              ),
            ),
            _loginForm(),
          ],
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Form(
      child: Padding(
        padding: EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _userNameField(),
            SizedBox(
              height: 10,
            ),
            _passwordField(),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: _loginBtn(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
        Navigator.pushReplacementNamed(context, "/home");
      },
      child: Text(
        "Log in",
        style: TextStyle(
          fontSize: 15,
          fontFamily: 'leow',
        ),
      ),
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(MaterialColors.myMainColor),
      ),
    );
  }

  Widget _passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Password',
      ),
    );
  }

  Widget _userNameField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        fillColor: MaterialColors.myMainColor,
        hintText: 'UserName',
      ),
    );
  }
}
