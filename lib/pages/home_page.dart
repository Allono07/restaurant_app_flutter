import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/components/my_current_location.dart';
import 'package:restaurant_app_flutter/components/my_description_box.dart';
import 'package:restaurant_app_flutter/components/my_drawer.dart';
import 'package:restaurant_app_flutter/components/my_silver_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyCurrentLocation(),

                  MyDescriptionBox()
                  //current location
                ],
              ),
              title: Text('title'))
        ],
        body: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
