import 'package:ebankdemo/Constants/Theme.dart';
import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  final String accountName;
  final String accountNumber;
  final int balance;

  const AccountWidget({
    Key? key,
    required this.accountName,
    required this.accountNumber,
    required this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 20),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 8,
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Row(
                children: [
                  // The a account Name
                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                      left: 30,
                      bottom: 30,
                    ),
                    child: Text(
                      accountName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: MaterialColors.myMainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Expanded(
                      flex: 0,
                      child: Row(
                        children: [
                          Text(
                            "Account Number",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Container(
                        margin: EdgeInsets.all(3),
                        child: Row(
                          children: [
                            Text(
                              accountNumber,
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
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
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Expanded(
                      flex: 0,
                      child: Row(
                        children: [
                          Text(
                            "Available Balance",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Container(
                        margin: EdgeInsets.all(3),
                        child: Row(
                          children: [
                            Text(
                              "\$ $balance",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                MaterialColors.myMainColor),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/transferMethod");
                          },
                          child: Text(
                            "Transfer",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 0,
                      child: Container(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                MaterialColors.myMainColor),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Account statement",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    )
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
