import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app_flutter/components/my_current_location.dart';
import 'package:restaurant_app_flutter/components/my_description_box.dart';
import 'package:restaurant_app_flutter/components/my_drawer.dart';
import 'package:restaurant_app_flutter/components/my_food_tile.dart';
import 'package:restaurant_app_flutter/components/my_silver_app_bar.dart';
import 'package:restaurant_app_flutter/components/my_tab_bar.dart';
import 'package:restaurant_app_flutter/model/food.dart';
import 'package:restaurant_app_flutter/model/restaurant.dart';
import '../pages/food_page.dart';
import 'package:smartech_base/smartech_base.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: FoodCategory.values.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController = TabController(length: 5, vsync: this);

    super.dispose();
  }

  List<Food> _filterMenuByCategory(FoodCategory category, List<Food> fullMenu) {
    return fullMenu.where((food) => food.category == category).toList();
  }

  List<Widget> getFoodInThisCategory(List<Food> fullMenu) {
    return FoodCategory.values.map((category) {
      //get category menu
      List<Food> categoryMenu = _filterMenuByCategory(category, fullMenu);
      return ListView.builder(
        itemCount: categoryMenu.length,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          //get inidivual food
          final food = categoryMenu[index];
          return FoodTile(
              food: food,
              onTap: () {
                var map = {
                  'name': food.name,
                  'description': food.description,
                  'category': food.category.toString(),
                };
                Smartech().trackEvent("item_clicked", map);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FoodPage(food: food)));
              });
        },
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          MySilverAppBar(
            title: MyTabBar(
              tabController: _tabController,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const MyCurrentLocation(),

                const MyDescriptionBox()
                //current location
              ],
            ),
          ),
        ],
        body: Consumer<Restaurant>(
          builder: (context, restaurant, child) => TabBarView(
              controller: _tabController,
              children: getFoodInThisCategory(restaurant.menu)),
        ),
      ),
    );
  }
}
