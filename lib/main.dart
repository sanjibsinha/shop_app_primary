import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'views/books_overview_screen.dart';
import 'views/book_detail_screen.dart';
import 'models/books.dart';

void main() => runApp(const BookApp());

class BookApp extends StatelessWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Books(),
      child: MaterialApp(
        title: 'Book Shop',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          primaryColor: Colors.deepOrange,
        ),
        home: const BooksOverviewScreen(),
        routes: {
          BookDetailScreen.routeName: (ctx) => const BookDetailScreen(),
        },
      ),
    );
  }
}
