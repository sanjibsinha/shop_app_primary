import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_primary/controllers/books_grid.dart';

import 'models/cart.dart';
import 'models/orders.dart';
import 'views/books_overview_screen.dart';
import 'views/book_detail_screen.dart';
import 'models/books.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Books(),
        ),
        ChangeNotifierProvider(
          create: (_) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) => Orders(),
        ),
      ],
      child: const BookApp(),
    ),
  );
}

class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Shop',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        primaryColor: Colors.deepOrange,
      ),
      home: const BooksOverviewScreen(),
      routes: {
        BookDetailScreen.routeName: (ctx) => const BookDetailScreen(),
        //CartScreen.routeName: (ctx) => CartScreen(),
      },
    );
  }
}
