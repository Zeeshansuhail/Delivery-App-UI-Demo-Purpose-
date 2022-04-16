import 'package:flutter/material.dart';
import 'package:test_app/Screen/home/componets/Category.dart';
import 'package:test_app/Screen/home/componets/curosel.dart';
import 'package:test_app/Screen/home/componets/header.dart';
import 'package:test_app/Screen/home/componets/latest_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                // ignore: sized_box_for_whitespace
                Container(
                  child: const Header(),
                ),
                const SizedBox(
                  height: 15,
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 53,
                  child: TextField(
                    decoration: InputDecoration(
                      helperMaxLines: 10,
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Pick Your Fourite",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(
                              width: 0, color: Color.fromARGB(0, 0, 0, 0))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Curosel(),
                const SizedBox(
                  height: 15,
                ),
                const Category(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: const [
                    Icon(Icons.label_outline_rounded),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "In the Spotlight",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 25),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const LatestProducts()
              ],
            )),
      )),
    );
  }
}
