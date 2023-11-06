import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/data/data_places.dart';

class GalleryPreviewPlaces extends StatelessWidget {
  final Places places;
  final int index;

  const GalleryPreviewPlaces({
    super.key,
    required this.places,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          height: 60,
          width: 96,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(places.gallery[index]), fit: BoxFit.cover)),
        ),
      ],
    );
  }
}
