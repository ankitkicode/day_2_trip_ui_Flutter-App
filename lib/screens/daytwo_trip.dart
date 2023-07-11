// ignore_for_file: unused_local_variable, no_leading_underscores_for_local_identifiers, unused_label


import 'package:day_2_trip_ui/screens/makePage_trip.dart';
import 'package:flutter/material.dart';

class DayTwoTrip extends StatefulWidget {
  const DayTwoTrip({super.key});

  @override
  State<DayTwoTrip> createState() => _DayTwoTripState();
}

class _DayTwoTripState extends State<DayTwoTrip> {
  // ignore: unused_field
  late PageController pageController;

  void _onScroll() {
    print("object");
  }

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          makePage("asset/two trip.jpg", 'USA',
              "With Chrome profiles you can separate all your Chrome stuff. Create profiles for friends and family, or split between work and fun.With Chrome profiles you can separate all your Chrome stuff. Create profiles for friends and family, or split between work and fun.", 1),
          makePage("asset/one trip.jpg", "England",
              "With Chrome profiles you can separate all your Chrome stuff. Create profiles for friends and family, or split between work and fun.With Chrome profiles you can separate all your Chrome stuff. Create profiles for friends and family, or split between work and fun.", 2),
          makePage("asset/three trip.jpg", "America",
              "With Chrome profiles you can separate all your Chrome stuff. Create profiles for friends and family, or split between work and fun.With Chrome profiles you can separate all your Chrome stuff. Create profiles for friends and family, or split between work and fun.", 3),
          makePage("asset/four trip.jpg", "South",
              "With Chrome profiles you can separate all your Chrome stuff. Create profiles for friends and family, or split between work and fun.With Chrome profiles you can separate all your Chrome stuff. Create profiles for friends and family, or split between work and fun.", 4),
        ],
      ),
    );
  }
}
