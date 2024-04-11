import 'package:delivery_app/auth/login_or_register.dart';
import 'package:delivery_app/models/restaurant.dart';
import 'package:delivery_app/pages/home_page.dart';
import 'package:delivery_app/pages/settings_page.dart';
import 'package:delivery_app/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // theme provider
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        ),
        // restaurant provider
        ChangeNotifierProvider(
          create: (context) => Restaurant(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
