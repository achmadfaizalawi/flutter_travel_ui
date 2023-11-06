import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/data/data_places.dart';
import 'package:flutter_travel_ui/detail_place_page/detail_place_page.dart';

class PopularPlace extends StatelessWidget {
  final Places places;
  final int index;

  const PopularPlace({
    super.key,
    required this.places,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailPlacePage(places: places);
                },
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(right: 20),
            height: 260,
            width: 220,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(places.images), fit: BoxFit.cover)),
            child: Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child:
                            Icon(Icons.favorite, color: Colors.red, size: 18),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.fromLTRB(20, 6, 20, 6),
                          margin: const EdgeInsets.fromLTRB(16, 16, 3, 16),
                          child: Text(places.name,
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: "OpenSans")),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          padding: const EdgeInsets.fromLTRB(10, 6, 10, 6),
                          margin: const EdgeInsets.fromLTRB(3, 16, 16, 16),
                          child: Row(
                            children: [
                              const Icon(Icons.star,
                                  size: 18, color: Colors.yellow),
                              Padding(
                                padding: const EdgeInsets.only(left: 3.0),
                                child: Text(
                                  places.rating,
                                  style: const TextStyle(
                                      fontSize: 15, fontFamily: "OpenSans"),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
