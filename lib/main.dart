import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerappdemo/src/pages/home_page.dart';
import 'package:providerappdemo/src/providers/heroesInfo_provider.dart';
import 'package:providerappdemo/src/providers/villanosinfo_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //     create: (context) => HeroesInfo(),
  //     child: MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       title: 'Provider App',
  //       initialRoute: 'home',
  //       routes: {
  //         'home': (BuildContext context) => HomePage(),
  //       },
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HeroesInfo(),
        ),
        ChangeNotifierProvider(
          create: (context) => VillanosInfo(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider App',
        initialRoute: 'home',
        routes: {
          'home': (BuildContext context) => HomePage(),
        },
      ),
    );
  }
}
