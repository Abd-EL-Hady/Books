import 'package:books/features/nav_ui_pages/Home_Page/home.dart';
import 'package:books/features/nav_ui_pages/like_page/like.dart';
import 'package:books/features/nav_ui_pages/profile_page/profile.dart';
import 'package:books/features/nav_ui_pages/search_page/search.dart';
import 'package:flutter/material.dart';

class Nav_bar_view extends StatefulWidget {
  const Nav_bar_view({super.key});

  @override
  State<Nav_bar_view> createState() => _Nav_bar_viewState();
}

class _Nav_bar_viewState extends State<Nav_bar_view> {
  int selectedPage = 0;
  List<Widget> pages = [
    const home_page(),
    const search_page(),
    const like_page(),
    const profile_page(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedPage,
          onTap: (value) {
            setState(() {
              selectedPage = value;
            });
          },
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.green,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Likes"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
