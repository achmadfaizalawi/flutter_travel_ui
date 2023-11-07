import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/booking_page/booking_page.dart';
import 'package:flutter_travel_ui/data/data_places.dart';
import 'package:flutter_travel_ui/detail_place_page/widget/about_preview_place.dart';
import 'package:flutter_travel_ui/detail_place_page/widget/gallery_preview_place.dart';
import 'package:flutter_travel_ui/detail_place_page/widget/image_preview_place.dart';

class DetailPlacePage extends StatefulWidget {
  final Places places;

  const DetailPlacePage({super.key, required this.places});

  @override
  State<DetailPlacePage> createState() => _DetailPlacePageState();
}

class _DetailPlacePageState extends State<DetailPlacePage> {
  Color _colorFamousPlaces = Colors.blue;
  Color _colorHotels = Colors.white;
  Color _colorOurPicks = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImagePreviewPlaces(places: widget.places),
              AboutPreviewPlaces(places: widget.places),
              const SizedBox(height: 20),
              const Text(
                "Gallery",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Rubik"),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  itemCount: widget.places.gallery.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GalleryPreviewPlaces(
                      places: widget.places,
                      index: index,
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Column(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          setState(() {
                            if (_colorFamousPlaces == Colors.blue) {
                              _colorFamousPlaces = Colors.white;
                            } else {
                              _colorFamousPlaces = Colors.blue;
                              _colorHotels = Colors.white;
                              _colorOurPicks = Colors.white;
                            }
                          });
                        },
                        child: const Text(
                          "Famous Places",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w600,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: _colorFamousPlaces,
                          shape: BoxShape.circle,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          setState(() {
                            if (_colorHotels == Colors.blue) {
                              _colorHotels = Colors.white;
                            } else {
                              _colorHotels = Colors.blue;
                              _colorOurPicks = Colors.white;
                              _colorFamousPlaces = Colors.white;
                            }
                          });
                        },
                        child: const Text(
                          "Hotels",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w600,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: _colorHotels,
                          shape: BoxShape.circle,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(20),
                        onTap: () {
                          setState(() {
                            if (_colorOurPicks == Colors.blue) {
                              _colorOurPicks = Colors.white;
                            } else {
                              _colorOurPicks = Colors.blue;
                              _colorFamousPlaces = Colors.white;
                              _colorHotels = Colors.white;
                            }
                          });
                        },
                        child: const Text(
                          "Our Picks",
                          style: TextStyle(
                            fontSize: 17,
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w600,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: _colorOurPicks,
                          shape: BoxShape.circle,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
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
                                "\$${widget.places.price}",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 6),
                              child: Text(
                                "/Person",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
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
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                              elevation: MaterialStateProperty.all(10),
                              shadowColor:
                                  MaterialStateProperty.all(Colors.blue[300]),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const BookingPage();
                                  },
                                ),
                              );
                            },
                            child: const Text(
                              "Book Now",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: "OpenSans",
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
