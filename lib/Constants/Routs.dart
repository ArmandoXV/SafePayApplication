import 'package:ebankdemo/Screens/AdressesBookScreen.dart';
import 'package:ebankdemo/Screens/BillingServicesScreen.dart';
import 'package:ebankdemo/Screens/HomeScreen.dart';
import 'package:ebankdemo/Screens/LoginScreen.dart';
import 'package:ebankdemo/Screens/QRScreen.dart';
import 'package:ebankdemo/Screens/ServiceProvidersScreen.dart';
import 'package:ebankdemo/Screens/SplashScreen.dart';
import 'package:ebankdemo/Screens/TransferMethodScreen.dart';
import 'package:ebankdemo/Screens/TransferScreen.dart';
import 'package:ebankdemo/Screens/TransferBetweenMyAccountsScreen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> get route {
  return <String, WidgetBuilder>{
    "/onboarding": (BuildContext context) => new Onboarding(),
    "/login": (BuildContext context) => new Login(),
    "/home": (BuildContext context) => new Home(),
    "/transferMethod": (BuildContext context) => new TransferMethodScreen(),
    "/transfer": (BuildContext context) => new TransferScreen(),
    "/qrscan": (BuildContext context) => new QRViewExample(),
    "/contactLists": (BuildContext context) => new ContactLists(),
    "/transferbetweenMyAccounts": (BuildContext context) =>
        new TransferBetweenMyAcScreen(),
    "/servicesProvidersWidget": (BuildContext context) =>
        new ServicesProvidersWidget(),
    "/provider": (BuildContext context) => new BillingServicesScreen(),
  };
}
