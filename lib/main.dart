
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:peas/providers/auth_provider.dart';
import 'package:peas/screens/home_general.dart';
import 'package:peas/screens/home_farmer.dart';
import 'package:peas/screens/intro_screen.dart';

void main() {
  runApp(const PeasApp());
}

class PeasApp extends StatelessWidget {
  const PeasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'মটরশুঁটি',
        theme: ThemeData(primarySwatch: Colors.green),
        initialRoute: '/',
        routes: {
          '/': (_) => const IntroScreen(),
          HomeGeneral.routeName: (_) =>  HomeGeneral(),
          HomeFarmer.routeName: (_) =>  HomeFarmer(),
        },
      ),
    );
  }
}
