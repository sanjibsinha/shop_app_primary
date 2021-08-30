import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../models/books.dart';

class BookDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  const BookDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context)!.settings.arguments as String; // is the id!
    final loadedProduct = Provider.of<Books>(
      context,
      listen: false,
    ).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
    );
  }
}
