import 'package:coffee_app/components/coffee_tile.dart';
import 'package:coffee_app/models/coffee.dart';
import 'package:coffee_app/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  void removeItem(Coffee coffee, BuildContext context){
    Provider.of<CoffeeShop>(context, listen: false).removeItemCart(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) =>
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  const Text(
                    'My Cart',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 25,),
                  Expanded(
                    child: ListView.builder(
                      itemCount: value.userCart.length,
                      itemBuilder: (context, index) {
                        Coffee eachCoffee = value.userCart[index];
                        return CoffeeTile(
                          onPressed: () => removeItem(eachCoffee, context),
                          coffee: eachCoffee,
                          icon: const Icon(Icons.delete_outline),);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
