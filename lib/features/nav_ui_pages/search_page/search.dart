import 'package:books/core/widgets/home_header.dart';
import 'package:flutter/material.dart';

class search_page extends StatefulWidget {
  const search_page({super.key});

  @override
  State<search_page> createState() => _search_pageState();
}

class _search_pageState extends State<search_page> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              HomeHeader(),
              Text(" search_page"),
            ],
          ),
        ],
      ),
    );
  }
}
