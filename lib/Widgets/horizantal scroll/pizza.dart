import 'package:bytencoder/Screens/burger_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PizzaCard extends StatelessWidget {
  const PizzaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                height: 80,
                width: 80,
                color: Colors.white,
                child: Image.asset("assets/pizza.png"),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Pizza",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                width: 35.0,
                height: 34.0,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => BurgerPage()));
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
