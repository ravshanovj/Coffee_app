
import 'package:coffee_app/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  void Function()? onPressed;
  final Widget icon;
  CoffeeTile({Key? key,required this.onPressed, required this.coffee, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15)
      ),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(
          onPressed: onPressed,
          icon: icon,
        ),
      ),
    );
  }
}
