import 'package:flutter/material.dart';

import './product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Beginning Flutter With Dart',
      description: 'You can learn Flutter as well Dart.',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/09/05/18/32/old-books-436498_960_720.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Flutter State Management',
      description: 'Everything you should know about Flutter State.',
      price: 59.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/09/10/17/18/book-1659717_960_720.jpg',
    ),
    Product(
      id: 'p3',
      title: 'WordPress Coding',
      description:
          'WordPress coding is not difficult, in fact it is interesting.',
      price: 19.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2015/11/19/21/10/glasses-1052010_960_720.jpg',
    ),
    Product(
      id: 'p4',
      title: 'PHP 8 Standard Library',
      description: 'PHP 8 Standard Library has made developers life easier.',
      price: 49.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2015/09/05/21/51/reading-925589_960_720.jpg',
    ),
  ];
  // var _showFavoritesOnly = false;

  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // }
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
