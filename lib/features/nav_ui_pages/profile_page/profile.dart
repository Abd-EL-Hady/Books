import 'package:books/core/widgets/home_header.dart';
import 'package:flutter/material.dart';

class profile_page extends StatefulWidget {
  const profile_page({super.key});

  @override
  State<profile_page> createState() => _profile_pageState();
}

class _profile_pageState extends State<profile_page> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              HomeHeader(),
              Text(" profile_page"),
            ],
          ),
        ],
      ),
    );
  }
}
