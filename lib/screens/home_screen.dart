import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> names = [
    'Apple',
    'Banana',
    'Orange',
    'Grapes',
    'Strawberry',
    'Watermelon',
    'Pineapple',
    'Mango',
    'Kiwi',
    'Peach',
    'Stripes',
    'Polka dots',
    'Floral',
    'Plaid',
    'Abstract',
    'Geometric',
    'Tie-dye',
    'Animal print',
    'Tribal',
    'Ombre',
    'Bread',
    'Milk',
    'Eggs',
    'Cheese',
    'Yogurt',
    'Cereal',
    'Pasta',
    'Rice',
    'Beans',
    'Tomatoes'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Cart App'),actions: const [
        Icon(CupertinoIcons.cart_badge_minus), SizedBox(width: 20,)
      ],),
      body: GridView.builder(
        itemCount: names.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade200,
                border: Border.all(
                  color: Colors.lightGreen,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                Expanded(
                    child: Center(
                        child: Text(
                  names[index],
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .displayMedium
                      ?.copyWith(fontWeight: FontWeight.bold),
                ))),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Add to cart'),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
