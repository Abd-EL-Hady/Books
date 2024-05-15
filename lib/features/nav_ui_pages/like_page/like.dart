import 'package:books/core/widgets/home_header.dart';
import 'package:flutter/material.dart';

class like_page extends StatefulWidget {
  const like_page({super.key});

  @override
  State<like_page> createState() => _like_pageState();
}

class _like_pageState extends State<like_page> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              HomeHeader(),
              Text(" like_page"),
            ],
          ),
        ],
      ),
    );
  }
}
