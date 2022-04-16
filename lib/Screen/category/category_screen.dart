import 'package:flutter/material.dart';
import 'package:test_app/Screen/category/component/list_category.dart';

import 'component/header.dart';

class CategoryScreen extends StatelessWidget {
  static const routenamed = "CategoryScreen";
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              // ignore: sized_box_for_whitespace
              Container(
                child: const CategoryHeader(),
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
                    hintText: "Search.....",
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
              const ListCategory(),
            ]),
          ),
        ),
      ),
    );
  }
}
