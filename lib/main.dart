import 'package:flutterrr/providers/loginprovider.dart';
import 'package:flutterrr/providers/productprovider.dart';
import 'package:flutterrr/providers/signupprovider.dart';
import 'package:flutterrr/screens/signupscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //aaa
        ChangeNotifierProvider(
          create: (context) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SignUpProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductsProvider(),
        )
      ],
      child: MaterialApp(
        home: SignUpScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}