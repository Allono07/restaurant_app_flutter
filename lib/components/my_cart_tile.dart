import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app_flutter/model/cart_item.dart';
import 'package:restaurant_app_flutter/model/restaurant.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;

  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
        builder: (context, restaurant, child) => Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      //food image
                      Image.asset(
                        cartItem.food.imagePath,
                        height: 120,
                      ),

                      //image and price

                      //increment and decrement quantity
                    ],
                  )
                ],
              ),
            ));
  }
}
