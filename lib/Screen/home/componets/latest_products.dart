import 'package:flutter/material.dart';
import 'package:test_app/Screen/detail_screen/detail_screen.dart';

class LatestProducts extends StatelessWidget {
  const LatestProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.56,
      child: GridView.builder(
          itemCount: 10,
          physics: const AlwaysScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.28),
          itemBuilder: (context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(DetailScreen.routenamed);
                },
                child: Card(
                  elevation: 10.0,
                  shadowColor: Colors.black54,
                  shape: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 1, color: Colors.black26),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      // ignore: avoid_unnecessary_containers
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              topRight: Radius.circular(5.0),
                            ),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://mcdn.wallpapersafari.com/medium/34/46/W6l4nL.jpg"),
                                fit: BoxFit.cover,
                                scale: 1.0),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          padding: const EdgeInsets.only(
                              top: 5, left: 5, bottom: 5, right: 5),
                          child: Row(
                            children: [
                              const Text(
                                "Burger",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 18,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  const Text(
                                    "5.3",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
