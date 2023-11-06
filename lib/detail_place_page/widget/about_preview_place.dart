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
        const Padding(
          padding: EdgeInsets.fromLTRB(40, 4, 20, 5),
          child: Text(
            "About",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                fontFamily: "OpenSans"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 5, 40, 20),
          child: Text(
            places.about,
            textAlign: TextAlign.justify,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                fontFamily: "OpenSans"),
          ),
        ),
      ],
    );
  }
}
