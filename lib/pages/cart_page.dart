import 'package:flutter/material.dart';
import 'package:restaurant_app_flutter/components/my_button.dart';
import 'package:restaurant_app_flutter/components/my_cart_tile.dart';
import 'package:restaurant_app_flutter/model/restaurant.dart';
import 'package:provider/provider.dart';
import 'package:smartech_base/smartech_base.dart';
import 'package:restaurant_app_flutter/pages/payment_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(builder: (context, restaurant, child) {
      final userCart = restaurant.cart;

      return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                  onPressed: () {
                    AlertDialog(
                        title: const Text("Are you sure you want to delete?"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Cancel"))
                        ]);
                  },
                  icon: const Icon(Icons.delete))
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? const Expanded(child: Text("Cart is empty"))
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  final cartItem = userCart[index];

                                  return MyCartTile(cartItem: cartItem);
                                }
                                // => ListTile(
                                //       title: Text(userCart[index].food.name),
                                //     )
                                //     {
                                //   final cartItem = userCart[index];
                                //   return ListTile(
                                //     title: T
                                // aaext(cartItem.food.name),
                                //   );
                                //   //return MyCartTile(cartItem: cartItem);
                                // }
                                ),
                          )
                  ],
                ),
              ),
              MyButton(
                  text: "Go to Checkout",
                  onTap: () {
                    Smartech().trackEvent("navigated_to_checkout", {});
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PaymentPage(),
                        ));
                  }),
              const SizedBox(
                height: 25,
              ),
            ],
          ));
    });
  }
}
