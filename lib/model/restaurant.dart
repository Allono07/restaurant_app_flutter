import 'package:flutter/cupertino.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/burgers/burger.png",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/burgers/images.jpeg",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),

    //salads
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),

    //sides
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/burgers/burger.png",
      price: 1.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/burgers/images.jpeg",
      price: 1.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),

    //deserts
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),

    //drinks
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "lib/images/bugers",
      price: 1.00,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
  ];

  //getters

  List<Food> get menu => _menu;

  //operations
}
