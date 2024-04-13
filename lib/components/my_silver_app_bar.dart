import 'package:delivery_app/models/restaurant.dart';
import 'package:delivery_app/pages/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MySilverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySilverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340,
      collapsedHeight: 120,
      floating: false,
      pinned: true,
      actions: [
        // cart button
        Stack(
          children: [
            IconButton(
              onPressed: () {
                // go to cart page

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartPage(),
                  ),
                );
              },
              icon: Icon(Icons.shopping_cart),
            ),

            // Positioned badge to show item count
            Positioned(
              right: 0,
              top: 0,
              child: CircleAvatar(
                radius: 10, // Size of the badge
                backgroundColor: Colors.red, // Background color of the badge
                child: Consumer<Restaurant>(
                  builder: (context, restaurant, child) {
                    // Get total item count from the restaurant model
                    final itemCount = restaurant.getTotalItemCount();

                    // Display item count as text in the badge
                    return Text(
                      itemCount.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12, // Font size of the badge text
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ],
      backgroundColor: Theme.of(context).colorScheme.background,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text("Full with Breakfast"),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: child,
        ),
        title: title,
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
      ),
    );
  }
}
