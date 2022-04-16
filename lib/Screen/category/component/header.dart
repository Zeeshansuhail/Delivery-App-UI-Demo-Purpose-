import 'package:flutter/material.dart';

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.arrow_back,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            const Text(
              "Category Food",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.w800),
            ),
            const Spacer(),
            Row(
              children: [
                Icon(
                  Icons.filter_list_alt,
                  color: Theme.of(context).primaryColor,
                ),
                const SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.lightbulb,
                  color: Theme.of(context).primaryColor,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
