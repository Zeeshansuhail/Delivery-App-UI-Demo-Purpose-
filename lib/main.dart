import 'package:flutter/material.dart';
import 'package:test_app/Screen/category/category_screen.dart';
import 'package:test_app/Screen/detail_screen/detail_screen.dart';
import 'package:test_app/Screen/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.orange,
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange)
              .copyWith(secondary: Colors.orangeAccent)),
      title: 'Test Demo',
      home: const HomeScreen(),
      routes: {
        CategoryScreen.routenamed: (context) => const CategoryScreen(),
        DetailScreen.routenamed: (context) => const DetailScreen(),
      },
    );
  }
}
