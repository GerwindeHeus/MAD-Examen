import 'package:flutter/material.dart';
import 'package:madexamn/pages/NavButtom.dart';
import 'package:provider/provider.dart';
import 'package:madexamn/providers/news_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NewsProvider(),
      child: MaterialApp(
        title: 'MAD Examen',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: NavBottom(),
      ),
    );
  }
}
