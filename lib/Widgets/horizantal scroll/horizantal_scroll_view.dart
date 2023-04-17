import 'package:bytencoder/Widgets/horizantal%20scroll/momo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'burger.dart';

import 'cake.dart';
import 'pizza.dart';

class HorizantalScroll extends StatelessWidget {
  const HorizantalScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              BurgerCard(),
              PizzaCard(),
              CakeCard(),
              MomoCard(),
            ]),
      ),
    );
  }
}
