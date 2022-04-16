import 'package:flutter/material.dart';
import 'package:test_app/Screen/category/category_screen.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: MediaQuery.of(context).size.height * 0.18,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 7,
          itemBuilder: (BuildContext context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(CategoryScreen.routenamed);
              },
              child: Container(
                width: 100,
                padding: const EdgeInsets.all(10),
                child: Container(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38, width: 1),
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/3075/3075977.png",
                            fit: BoxFit.contain,
                            scale: 1.0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Breakfast",
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.9,
                            fontWeight: FontWeight.bold,
                            fontSize: 10.0),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
