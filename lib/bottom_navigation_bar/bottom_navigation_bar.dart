import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/home_page/home_page.dart';
import 'package:flutter_travel_ui/icons/my_icons_icons.dart';
import 'package:flutter_travel_ui/page_development/favorite_page.dart';
import 'package:flutter_travel_ui/page_development/profile_page.dart';
import 'package:flutter_travel_ui/page_development/ticket_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPageIndex = 0;
  List pageList = [
    const HomePage(),
    const TicketPage(),
    const FavoritePage(),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(227, 242, 253, 1),
                blurRadius: 30,
              )
            ],
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(30),
            ),
            child: NavigationBar(
                elevation: 10,
                height: 70,
                backgroundColor: Colors.white,
                shadowColor: Colors.blue,
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                onDestinationSelected: (int index) {
                  setState(() {
                    currentPageIndex = index;
                  });
                },
                selectedIndex: currentPageIndex,
                destinations: const [
                  NavigationDestination(
                      icon: Icon(MyIcons.icon_1, color: Colors.blue),
                      label: "Home"),
                  NavigationDestination(
                      icon: Icon(MyIcons.icon_2, color: Colors.blue),
                      label: "Ticket"),
                  NavigationDestination(
                      icon: Icon(MyIcons.icon3, color: Colors.blue),
                      label: "Favorite"),
                  NavigationDestination(
                      icon: Icon(MyIcons.icon_4, color: Colors.blue),
                      label: "Profile"),
                ]),
          ),
        ),
        body: pageList[currentPageIndex]);
  }
}
