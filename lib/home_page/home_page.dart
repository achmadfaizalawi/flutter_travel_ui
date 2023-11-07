import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/data/data_categories.dart';
import 'package:flutter_travel_ui/data/data_places.dart';
import 'package:flutter_travel_ui/home_page/widget/list_category.dart';
import 'package:flutter_travel_ui/home_page/widget/list_popular_place.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Jeff Lollipop",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Rubik",
                      ),
                    ),
                  ],
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color.fromRGBO(227, 242, 253, 1),
                  contentPadding: const EdgeInsets.all(20),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  hintText: "Find things to do",
                  hintStyle: const TextStyle(fontFamily: "OpenSans"),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: Text(
                    "Popular Places",
                    style: TextStyle(
                      fontSize: 49,
                      fontFamily: "Rubik",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: allData.length,
                  itemBuilder: (context, index) {
                    return PopularPlace(
                      places: allData[index],
                      index: index,
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Category",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w300,
                  fontFamily: "Rubik",
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 116,
                child: ListView.builder(
                  itemCount: dataCategory.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CategoryPlace(
                      category: dataCategory[index],
                      index: index,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
