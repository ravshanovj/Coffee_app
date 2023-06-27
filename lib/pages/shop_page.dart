import 'package:coffee_app/components/coffee_tile.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  void addToCart(Coffee coffee, BuildContext context) {
    Provider.of<CoffeeShop>(context, listen: false).addItemCart(coffee);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Your Text.....'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Your Text...'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    const Text(
                      'How would you like your coffee?',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: value.coffeeShop.length,
                        itemBuilder: (context, index) {
                          Coffee eachCoffee = value.coffeeShop[index];
                          return CoffeeTile(
                            onPressed: () => addToCart(eachCoffee, context),
                            coffee: eachCoffee,
                            icon: const Icon(Icons.add),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
