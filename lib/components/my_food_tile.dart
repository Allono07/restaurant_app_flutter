import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      food.name,
                      overflow: TextOverflow.ellipsis, // Handle overflow
                      maxLines: 1,
                    ),
                    Text(
                      '\$' + food.price.toString(),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      overflow: TextOverflow.ellipsis, // Handle overflow
                      maxLines: 1, // Limit to one line
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      food.description,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                      overflow: TextOverflow.ellipsis, // Handle overflow
                      maxLines: 2,
                    )
                  ],
                )),
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://static.vecteezy.com/system/resources/previews/010/803/444/original/cute-burger-small-cartoon-food-concept-isolated-illustration-flat-cartoon-style-suitable-for-sticker-icon-design-premium-logo-vector.jpg',
                      height: 120, // Set to appropriate size
                      width: 80, // Set to appropriate size
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.tertiary,
          endIndent: 25,
          indent: 25,
        )
      ],
    );
  }
}
