import 'package:flutter/cupertino.dart';
import 'package:restaurant_app_flutter/model/cart_item.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "assets/images/burgers/burger1.png",
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
      imagePath: "assets/images/burgers/burger1.png",
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
      imagePath: "assets/images/burgers/burger1.png",
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
      imagePath: "assets/images/burgers/burger1.png",
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
      imagePath: "assets/images/burgers/burger1.png",
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
      imagePath: "assets/images/burgers/burger1.png",
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
      imagePath: "assets/images/burgers/burger1.png",
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
      imagePath: "assets/images/burgers/burger1.png",
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
      imagePath: "assets/images/burgers/burger1.png",
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
      imagePath: "assets/images/burgers/burger1.png",
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
      imagePath: "assets/images/burgers/burger1.png",
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
      imagePath: "assets/images/burgers/burger1.png",
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
      imagePath: "assets/images/burgers/burger1.png",
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
      imagePath: "assets/images/burgers/burger1.png",
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
      imagePath: "assets/images/burgers/burger1.png",
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
      imagePath: "assets/images/burgers/burger1.png",
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
      imagePath: "assets/images/burgers/burger1.png",
      price: 1.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "assets/images/burgers/burger1.png",
      price: 1.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "assets/images/burgers/burger1.png",
      price: 1.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "assets/images/burgers/burger1.png",
      price: 1.00,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "assets/images/burgers/burger1.png",
      price: 1.00,
      category: FoodCategory.desserts,
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
      imagePath: "assets/images/burgers/burger1.png",
      price: 1.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "assets/images/burgers/burger1.png",
      price: 1.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "assets/images/burgers/burger1.png",
      price: 1.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "assets/images/burgers/burger1.png",
      price: 1.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
    Food(
      name: "Class Cheeseburger",
      description: "A juicy burger",
      imagePath: "assets/images/burgers/burger1.png",
      price: 1.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Chees", price: 0.9),
        Addon(name: "Olive", price: 0.9),
        Addon(name: "Avocado", price: 2.9)
      ],
    ),
  ];

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  //getters
  final List<CartItem> _cart = [];

  void addToCart(Food food, List<Addon> selectAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectAddons);
      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //pthers, adda new cart
    else {
      _cart.add(CartItem(
        food: food,
        selectedAddons: selectAddons,
      ));
    }
    notifyListeners();
  }

  void removeFrom(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  double getTotoalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal + cartItem.quantity;
    }
    return total;
  }

  int getTotoalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  //operations
}
