import 'package:flutter/material.dart';

import '../model/food.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  const FoodPage({super.key, required this.food});

  @override
  State<FoodPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //food image
        children: [
          Image.asset(
            widget.food.imagePath,
          ),

          //food name

          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.food.name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  '\$' + widget.food.price.toString(),
                  style: TextStyle(
                      fontSize: 26,
                      color: Theme.of(context).colorScheme.primary),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.food.description,
                ),
                const SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Add-ons",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).colorScheme.secondary),
                      borderRadius: BorderRadius.circular(8)),
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: widget.food.availableAddons.length,
                      itemBuilder: (context, index) {
                        //get individual addon
                        Addon addon = widget.food.availableAddons[index];
                        return CheckboxListTile(
                            title: Text(addon.name),
                            subtitle: Text(
                              '\$' + addon.price.toString(),
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                            value: false,
                            onChanged: (value) {});
                      }),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
