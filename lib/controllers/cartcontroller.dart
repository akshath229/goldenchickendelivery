import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/food.dart';

class CartController extends GetxController {
  // Products store

  var _products = {}.obs;

  // Method to add a product to the cart
  void addProduct(Food product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }

    final snackbarContent = Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Image.asset(
            product.imgUrl, // Replace with the actual path to your image
            width: 24,
            height: 24,
          ),
        ),
        Expanded(
          child: Text(
            product.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          "Quantity: ${_products[product]}",
        ),
      ],
    );

    Get.snackbar(
      "Cart Updated",
      "",
      messageText: snackbarContent,

    );
  }

  // Method to remove a product from the cart
  void removeProduct(Food product) {
    if (_products.containsKey(product)) {
      _products.remove(product);
      final snackbarContent = Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(
              product.imgUrl, // Replace with the actual path to your image
              width: 24,
              height: 24,
            ),
          ),
          Expanded(
            child: Text(
              product.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "Quantity: ${_products[product] ?? 0}",
          ),
        ],
      );

      Get.snackbar(
        "Cart Updated",
        "",
        messageText: snackbarContent,
      );
    }
  }

  // Method to clear the cart
  void clearCart() {
    _products.clear();
  }

  // Method to get the list of products in the cart
  List getCartProducts() {
    return _products.keys.toList();
  }

  // Method to get the quantity of a specific product in the cart
  int getProductQuantity(Food product) {
    return _products[product] ?? 0;
  }

  // Method to get the total number of items in the cart
  int getTotalItems() {
    return _products.length;
  }

  // Method to get the total cost of items in the cart
  double getTotalCost() {
    double total = 0;
    _products.forEach((product, quantity) {
      total += (product.price * quantity);
    });
    return total;
  }
}
