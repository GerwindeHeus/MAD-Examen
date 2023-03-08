import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:madexamn/components/opgeslagen_grid.dart';

class opgeslagen extends StatelessWidget {
  const opgeslagen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.white, Colors.grey])),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: OpgeslagenGrid(),
        ),
      ),
    );
  }
}
