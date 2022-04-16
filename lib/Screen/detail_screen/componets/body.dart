import 'package:flutter/material.dart';

class DetailBody extends StatelessWidget {
  const DetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5.0,
                    spreadRadius: 4.0,
                    offset: const Offset(2.0, 2.0))
              ]),
              height: 300,
              child: Image.network(
                  "https://mcdn.wallpapersafari.com/medium/34/46/W6l4nL.jpg",
                  fit: BoxFit.cover)),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Text(
                        "Double Chicken Burger ",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 1, color: Colors.black)),
                            child: const Text(
                              "-",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text("01",
                              style: TextStyle(
                                fontSize: 25,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1, color: Colors.black),
                            ),
                            child: const Text("+",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0, right: 10),
                      child: RichText(
                        textAlign: TextAlign.end,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: "Rs.",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                            TextSpan(
                                text: "250",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          FlatButton(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 25),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
              child: const Text(
                "Buy Now",
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}
