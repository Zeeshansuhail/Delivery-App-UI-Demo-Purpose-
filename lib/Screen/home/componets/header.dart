import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.home,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(
              width: 7,
            ),
            const Text(
              "Home",
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
