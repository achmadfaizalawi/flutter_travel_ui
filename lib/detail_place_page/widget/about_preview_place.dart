import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/data/data_places.dart';

class AboutPreviewPlaces extends StatelessWidget {
  const AboutPreviewPlaces({
    super.key,
    required this.places,
  });

  final Places places;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "About",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            fontFamily: "Rubik",
          ),
        ),
        const SizedBox(height: 10),
        Text(
          places.about,
          textAlign: TextAlign.justify,
          overflow: TextOverflow.ellipsis,
          maxLines: 5,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontFamily: "Rubik",
          ),
        ),
      ],
    );
  }
}
