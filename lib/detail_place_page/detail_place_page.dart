import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/data/data_places.dart';
import 'package:flutter_travel_ui/detail_place_page/widget/about_preview_place.dart';
import 'package:flutter_travel_ui/detail_place_page/widget/gallery_preview_place.dart';
import 'package:flutter_travel_ui/detail_place_page/widget/image_preview_place.dart';

class DetailPlacePage extends StatelessWidget {
  final Places places;

  const DetailPlacePage({super.key, required this.places});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImagePreviewPlaces(places: places),
            AboutPreviewPlaces(places: places),
            const Padding(
              padding: EdgeInsets.fromLTRB(40, 4, 40, 10),
              child: Text(
                "Gallery",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontFamily: "OpenSans"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                height: 70,
                child: ListView.builder(
                  itemCount: places.gallery.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GalleryPreviewPlaces(places: places, index: index);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Text(
                        "Famous Places",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w600,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      child: const Text(
                        "Hotels",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w600,
                            color: Colors.blue),
                      ),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: const Text(
                      "Our Picks",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w600,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "\$${places.price}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 6),
                            child: Text(
                              "/Person",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 120,
                        child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.blue),
                              elevation: MaterialStateProperty.all(10),
                              shadowColor: MaterialStateProperty.all(Colors.blue[300]),
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)))),
                            onPressed: () {},
                            child: const Text(
                              "Book Now",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "OpenSans"),
                            )),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
