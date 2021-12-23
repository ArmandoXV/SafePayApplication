import 'package:ebankdemo/Constants/Theme.dart';
import 'package:ebankdemo/Widgets/BottomBarWidget.dart';
import 'package:ebankdemo/Widgets/Btn.dart';
import 'package:ebankdemo/Widgets/ScreenHeaderWidget.dart';
import 'package:ebankdemo/Widgets/drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class BillingServicesScreen extends StatefulWidget {
  @override
  _BillingServicesScreenState createState() => _BillingServicesScreenState();
}

class _BillingServicesScreenState extends State<BillingServicesScreen> {
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
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ScreenHeaderWidget(),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            child: _transferBetweenMyAccountForm(),
          ),
        ],
      ),
    );
  }

  Widget _transferBetweenMyAccountForm() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 8,
        child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Text(
                      "Transfer Between My Accounts",
                      style: TextStyle(
                        color: MaterialColors.mySecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: _accountFieldWidget(),
            ),
            Expanded(
              flex: 0,
              child: Container(
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: SizedBox(
                height: 10,
              ),
            ),
            Expanded(
              flex: 0,
              child: Form(
                child: Column(
                  children: [
                    Expanded(
                      flex: 0,
                      child: _toAccountField(),
                    ),
                    Expanded(
                      flex: 0,
                      child: SizedBox(
                        height: 10,
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: _amountField(),
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: SizedBox(
                        height: 10,
                      ),
                    ),
                    Expanded(
                      flex: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: _commentField(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Transfer",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        MaterialColors.myMainColor),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 0,
              child: Divider(
                color: Colors.grey,
              ),
            ),
            Expanded(
              flex: 0,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(vertical: 3),
                    child: Text("Transfer fees are 0\$"),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 0,
              child: SizedBox(
                height: 6,
              ),
            )
          ],
        ),
      ),
    );
  }

  var currentProvider = "BBSF";
  var providers = [
    "BBSF",
    "al Baraka",
    "Commercial Bank of Syria",
    "Real State Bank of Syria",
    "Syira International Islamic Bank",
  ];

  var selectedToAccount = "Current Account";
  var accounts = ["Saving Account", "Current Account"];

  Widget _accountFieldWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: FormField<String>(
        builder: (FormFieldState<String> state) {
          return InputDecorator(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                icon: Icon(Icons.keyboard_arrow_down_sharp),
                value: currentProvider,
                isDense: true,
                onChanged: (newValue) {
                  setState(() {
                    currentProvider = newValue!;
                  });
                  print(currentProvider);
                },
                items: providers.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _toAccountField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: FormField<String>(
        builder: (FormFieldState<String> state) {
          return InputDecorator(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                icon: Icon(Icons.keyboard_arrow_down_sharp),
                value: selectedToAccount,
                isDense: true,
                onChanged: (newValue) {
                  setState(() {
                    selectedToAccount = newValue!;
                  });
                  print(selectedToAccount);
                },
                items: accounts.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _amountField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Amount',
        fillColor: MaterialColors.myMainColor,
      ),
    );
  }

  Widget _commentField() {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Comment',
        fillColor: MaterialColors.myMainColor,
      ),
    );
  }
}
