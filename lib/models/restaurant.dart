import 'package:collection/collection.dart';
import 'package:delivery_app/models/cart_item.dart';
import 'package:delivery_app/models/food.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/images/burgers/cheese_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "BBQ Burger",
      description:
          "A classic burger featuring a beef patty topped with smoky BBQ sauce, cheddar cheese, crispy onion rings, lettuce, and tomato, all sandwiched between a toasted bun.",
      imagePath: "lib/images/burgers/bbq_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description:
          "A beef patty topped with blue cheese, caramelized onions, arugula, and sliced pear, served on a toasted bun.",
      imagePath: "lib/images/burgers/bluemoon_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description:
          "A tropical twist on a burger with a beef patty, grilled pineapple slice, teriyaki sauce, lettuce, tomato, and Swiss cheese, all in a toasted bun.",
      imagePath: "lib/images/burgers/aloha_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A meatless option featuring a veggie patty made from ingredients such as beans, grains, and vegetables, topped with lettuce, tomato, avocado, and your choice of cheese and sauce.",
      imagePath: "lib/images/burgers/vege_burger.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),

    //salads
    Food(
      name: "Caesar Salad",
      description:
          "A salad of romaine lettuce, croutons, and Parmesan cheese, dressed with Caesar dressing.",
      imagePath: "lib/images/salads/Caesar_Salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Croutons", price: 1.99),
        Addon(name: "Anchovies", price: 2.99),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "A salad of tomatoes, cucumbers, red onions, olives, and feta cheese, dressed with olive oil and lemon juice.",
      imagePath: "lib/images/salads/Greek_Salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Shrimp", price: 0.99),
        Addon(name: "Olive Tapenade", price: 1.99),
        Addon(name: "Extra Feta Cheese", price: 2.99),
      ],
    ),
    Food(
      name: "Caprese Salad",
      description:
          "A simple Italian salad of tomatoes, fresh mozzarella, and basil, drizzled with balsamic glaze.",
      imagePath: "lib/images/salads/Caprese_Salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Balsamic Reduction", price: 0.99),
        Addon(name: "Prosciutto", price: 1.99),
        Addon(name: "Roasted Red Peppers", price: 2.99),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "A salad made with quinoa, vegetables like cucumber and bell peppers, and a tangy dressing.",
      imagePath: "lib/images/salads/Quinoa_Salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Vegetables", price: 0.99),
        Addon(name: "Chickpeas", price: 1.99),
        Addon(name: "Lemon Dressing", price: 2.99),
      ],
    ),
    Food(
      name: "Cobb Salad",
      description:
          "A salad of mixed greens, tomatoes, bacon, boiled eggs, grilled chicken, and avocado, dressed with vinaigrette.",
      imagePath: "lib/images/salads/Cobb_Salad.jpg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Blue Cheese Crumbles", price: 0.99),
        Addon(name: "Hard-Boiled Egg", price: 1.99),
        Addon(name: "Bacon Bits", price: 2.99),
      ],
    ),

    // sides
    Food(
      name: "Garlic Bread",
      description:
          " Bread toasted with garlic butter and herbs, often served alongside pasta dishes.",
      imagePath: "lib/images/sides/Garlic_Bread.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese", price: 0.99),
        Addon(name: "Herb Butter", price: 1.99),
        Addon(name: "Tomato Sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Mashed Potatoes",
      description: "Creamy, buttery potatoes whipped to a smooth consistency",
      imagePath: "lib/images/sides/Mashed_Potatoes.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Gravy", price: 0.99),
        Addon(name: "Cheese Topping", price: 1.99),
        Addon(name: "Chopped Herbs", price: 2.99),
      ],
    ),
    Food(
      name: "Steamed Asparagus",
      description:
          "Fresh asparagus spears steamed until tender and seasoned with salt and pepper.",
      imagePath: "lib/images/sides/Steamed_Asparagus.png",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Lemon Zest", price: 0.99),
        Addon(name: "Toasted Almonds", price: 1.99),
        Addon(name: "Butter Sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Coleslaw",
      description:
          "A salad of shredded cabbage and carrots, mixed with a creamy or tangy dressing.",
      imagePath: "lib/images/sides/Coleslaw.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Jalapenos", price: 0.99),
        Addon(name: "Pineapple Chunks", price: 1.99),
        Addon(name: "Nuts", price: 2.99),
      ],
    ),
    Food(
      name: "Grilled Vegetables",
      description:
          "A selection of seasonal vegetables grilled and seasoned with olive oil and herbs.",
      imagePath: "lib/images/sides/Grilled_Vegetables.jpg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Balsamic Glaze", price: 0.99),
        Addon(name: "Herb Oil", price: 1.99),
        Addon(name: "Goat Cheese Crumbles", price: 2.99),
      ],
    ),

    // desserts
    Food(
      name: "Chocolate Cake",
      description:
          "A rich, moist cake made with cocoa powder and topped with creamy chocolate frosting or ganache.",
      imagePath: "lib/images/desserts/Chocolate_Cake.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chocolate", price: 0.99),
        Addon(name: "CreamWhipped Cream", price: 1.99),
        Addon(name: "Fruit Sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Apple Pie",
      description:
          "A classic dessert made with spiced, sweet apple filling encased in a flaky, buttery crust.",
      imagePath: "lib/images/desserts/Apple_Pie.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 0.99),
        Addon(name: "Caramel Drizzle", price: 1.99),
        Addon(name: "Cinnamon Sugar", price: 2.99),
      ],
    ),
    Food(
      name: "Tiramisu",
      description:
          "An Italian dessert made with layers of coffee-soaked ladyfingers and mascarpone cheese, dusted with cocoa powder.",
      imagePath: "lib/images/desserts/Tiramisu.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cocoa Powder", price: 0.99),
        Addon(name: "Espresso Shot", price: 1.99),
        Addon(name: "Mascarpone Cream", price: 2.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "A creamy dessert with a crumbly crust and a sweet, smooth cheese filling, often topped with fruit or chocolate.",
      imagePath: "lib/images/desserts/Cheesecake.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Fruit Topping", price: 0.99),
        Addon(name: "Caramel Drizzle", price: 1.99),
        Addon(name: "Chocolate Ganache", price: 2.99),
      ],
    ),
    Food(
      name: "Creme Brulee",
      description:
          "A French dessert consisting of a rich custard base with a crispy, caramelized sugar topping.",
      imagePath: "lib/images/desserts/Creme_Brulee.jpg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Fresh Berries", price: 0.99),
        Addon(name: "Citrus Zest", price: 1.99),
        Addon(name: "Caramelized Sugar", price: 2.99),
      ],
    ),

    // drinks
    Food(
      name: "Mojito",
      description:
          "A refreshing cocktail made with white rum, lime juice, mint leaves, sugar, and soda water.",
      imagePath: "lib/images/drinks/Mojito.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Mint Leaves", price: 0.99),
        Addon(name: "Lime Wedge", price: 1.99),
        Addon(name: "Flavored Syrups", price: 2.99),
      ],
    ),
    Food(
      name: "Iced Coffee",
      description:
          "A chilled coffee beverage served over ice, often with milk or cream and sweetener.",
      imagePath: "lib/images/drinks/Iced_Coffee.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Flavored Syrups", price: 0.99),
        Addon(name: "Whipped Cream", price: 1.99),
        Addon(name: "Coffee Ice Cubes", price: 2.99),
      ],
    ),
    Food(
      name: "Piña Colada",
      description:
          "A tropical cocktail made with rum, coconut cream, and pineapple juice, garnished with a pineapple wedge.",
      imagePath: "lib/images/drinks/Pina_Colada.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Coconut Flakes", price: 0.99),
        Addon(name: "Pineapple Garnish", price: 1.99),
        Addon(name: "Dark Rum Float", price: 2.99),
      ],
    ),
    Food(
      name: "Matcha Latte",
      description:
          "A smooth, frothy beverage made with matcha green tea powder and steamed milk.",
      imagePath: "lib/images/drinks/Matcha_Latte.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Sweetened Condensed Milk", price: 0.99),
        Addon(name: "Whipped Cream", price: 1.99),
        Addon(name: "Matcha Dusting", price: 2.99),
      ],
    ),
    Food(
      name: "Berry Smoothie",
      description:
          "A healthy drink made with blended berries, yogurt, and a liquid base like juice or milk.",
      imagePath: "lib/images/drinks/Berry_Smoothie.jpg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Protein Powder", price: 0.99),
        Addon(name: "Chia Seeds", price: 1.99),
        Addon(name: "Honey Drizzle", price: 2.99),
      ],
    ),
  ];

  // user cart
  final List<CartItem> _cart = [];

  // delivery address (which user can change/update)
  String _deliveryAddress = 'Your Delivery Address';

  /*

  G E T T E R S
  
  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  /*

  O P E R A T I O N S
  
  */

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      bool isSameAddons = ListEquality().equals(
        item.selectedAddons,
        selectedAddons,
      );
      return isSameFood && isSameAddons;
    });

    // if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    // otherwise, add a new cart item to the cart
    else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartItem != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }

  // clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // update delivery address
  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }
  /*

  H E L P E R S
  
  */

  // generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    // formate the date to include up to seconds only
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("-------------");
    receipt.writeln("");
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln("");
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

  // format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
