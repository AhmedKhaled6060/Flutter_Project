import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:commercial_appl/Widgets/Navigationdrawer.dart';
import 'package:commercial_appl/main.dart';
import 'package:commercial_appl/products/products.dart';

class MyProduct extends StatelessWidget {
  MyProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initialize data variable inside the build method
    Data data = Provider.of<Data>(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          Consumer<Data>(
            builder: (context, data, _) {
              return Container(
                child: Row(
                  children: [
                    Icon(Icons.shopping_bag),
                    Text('${data.x}'), // Display x value from Data
                  ],
                ),
              );
            },
          ),
        ],
        title: Text('My Product'),
        backgroundColor: Colors.blue,
      ),
      drawer: navbar(),
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Product1(),
            ),
          );
        },
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'asset/Images/P2.png', // Replace with your image URL
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 8,
              left: 8,
              right: 8,
              child: InkWell(
                onTap: () {
                  adder(context, '10');
                },
                child: Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '10',
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(Icons.add),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to add value to x
  double adder(BuildContext context, String y) {
    Data data = Provider.of<Data>(context, listen: false);
    double x = data.x;
    x += double.parse(y);
    data.x = x;
    data.notifyListeners(); // Notify listeners about the change
    return x;
  }
}
