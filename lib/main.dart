import 'package:flutter/material.dart';
import 'package:payment_app_uiux/Providers/contactprovider.dart';
import 'package:payment_app_uiux/screens/screen1.dart';
import 'package:payment_app_uiux/screens/screen2contact.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (ctx) => Contactprovider())],
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Screen1(),
        routes: {Screen2contact().routename: (ctx) => Screen2contact()},
      ),
    );
  }
}
