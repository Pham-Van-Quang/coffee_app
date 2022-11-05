import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  CoffeeTile({
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeePrice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
            child: Container(
             padding: EdgeInsets.all(12),
             width: 200,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.black54,
             ),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 // coffee images
                 ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('assets/images/cafe.jpg')
                  ),

                 // coffee name
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.stretch,
                     children: [
                       const Text('Latte',
                        style: TextStyle(fontSize: 20),
                       ),
                      const SizedBox(height: 4),
                      Text('With Almond Milk',
                        style: TextStyle(color: Colors.grey[700]),
                       ),
                     ],
                   ),
                 ),
                 // price 
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10.0),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('\$4.00'),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(6)
                        ),
                        child: const Icon(Icons.add)),
                    ],
                   ),
                 )
               ],
             ),
            ),
          );
  }
}