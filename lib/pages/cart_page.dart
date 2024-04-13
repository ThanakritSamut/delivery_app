import 'package:delivery_app/components/my_button.dart';
import 'package:delivery_app/components/my_cart_tile.dart';
import 'package:delivery_app/models/restaurant.dart';
import 'package:delivery_app/pages/payment_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;
        final totalPrice = restaurant.getTotalPrice().toStringAsFixed(2);

        // scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              // clear cart button
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Are you sure you want to clear the cart?"),
                      actions: [
                        // cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("Cancel"),
                        ),

                        // yes button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            restaurant.clearCart();
                          },
                          child: Text("Yes"),
                        ),
                      ],
                    ),
                  );
                },
                icon: Icon(Icons.delete),
              )
            ],
          ),
          body: Column(
            children: [
              // list of cart
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? Expanded(
                            child: Center(
                              child: Text("Cart is empty..."),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  // get individual cart item
                                  final cartItem = userCart[index];

                                  // return cart tile UI
                                  return MyCartTile(cartItem: cartItem);
                                }),
                          )
                  ],
                ),
              ),

              // button to pay
              MyButton(
                text: totalPrice == '0.00'
                    ? 'Go to checkout'
                    : 'Go to checkout \$${totalPrice}',
                onTap: () => totalPrice != '0.00'
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentPaage(),
                        ))
                    : showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Your cart is empty"),
                          content: Text(
                              "Please add some items to your cart before proceeding to checkout."),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text("OK"),
                            ),
                          ],
                        ),
                      ),
              ),
              SizedBox(height: 25),
            ],
          ),
        );
      },
    );
  }
}
