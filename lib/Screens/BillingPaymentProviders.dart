import 'package:ebankdemo/Helpers/QrHelper.dart';
import 'package:flutter/material.dart';

class ServiceProviderWidget extends StatefulWidget {
  const ServiceProviderWidget({Key? key}) : super(key: key);
  static const routeName = '/serviceProvider';

  @override
  State<ServiceProviderWidget> createState() => _ServiceProviderWidgetState();
}

class _ServiceProviderWidgetState extends State<ServiceProviderWidget> {
  var result = 'test';
  final transferToAccountController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ModalRoute.of(context)!.settings.arguments as QrScannerhelperArgs;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(30),
          child: TextField(
            style: TextStyle(
              fontSize: 20,
            ),
            decoration: InputDecoration(
              labelText: 'Service Provider',
              contentPadding: EdgeInsets.all(1),
            ),
            controller: transferToAccountController,
          ),
        ),
        Container(
          margin: EdgeInsets.all(30),
          child: TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(
              fontSize: 20,
            ),
            decoration: InputDecoration(
              labelText: 'Amount',
              contentPadding: EdgeInsets.all(1),
            ),
            controller: amountController,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.all(30),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Transfer"),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
