import 'package:crypto_saving_apps/pages/main_page.dart';
import 'package:flutter/material.dart';
import '../styles/colors.dart';
import 'pages/on_boarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Saving App with Crypto Concept',
      routes: {
        OnBoardingPage.nameRoute: (context) => const OnBoardingPage(),
        MainPage.nameRoute: (context) => const MainPage(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kBlueRibbon),
        useMaterial3: true,
      ),
    );
  }
}
