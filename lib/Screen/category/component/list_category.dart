import 'package:flutter/material.dart';
import 'package:test_app/Screen/detail_screen/detail_screen.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.80,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(DetailScreen.routenamed);
            },
            child: Card(
              elevation: 10.0,
              shadowColor: Colors.black54,
              shape: OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 0, color: Colors.transparent),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 0,
                        style: BorderStyle.solid,
                        color: Colors.orange,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: Image.network(
                        "https://mcdn.wallpapersafari.com/medium/34/46/W6l4nL.jpg",
                        fit: BoxFit.cover,
                        scale: 1.0,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Product name",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$45",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
