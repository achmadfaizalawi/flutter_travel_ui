import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/data/data_categories.dart';

class CategoryPlace extends StatelessWidget {
  final Category category;
  final int index;

  const CategoryPlace({
    super.key,
    required this.category,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          height: 90,
          width: 130,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(category.images), fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Text(
            category.name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: "OpenSans"),
          )),
        )
      ],
    );
  }
}
