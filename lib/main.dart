import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app_flutter/auth/login_or_register.dart';
import 'package:restaurant_app_flutter/model/restaurant.dart';

import 'package:restaurant_app_flutter/themes/theme_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ChangeNotifierProvider(create: (context) => Restaurant()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
