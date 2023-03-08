import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class categorieen extends StatelessWidget {
  const categorieen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.white, Colors.grey])),
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(8.0)),
            Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 20,
                    height: 50,
                    color: Colors.amber,
                  ),
                  Text('Top Nieuws'),
                  Icon(Icons.check_box_outline_blank_rounded),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 20,
                    height: 50,
                    color: Colors.amber,
                  ),
                  Text('Buitenland'),
                  Icon(Icons.check_box_outline_blank_rounded),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 20,
                    height: 50,
                    color: Colors.amber,
                  ),
                  Text('Russo-Ukrainian War'),
                  Icon(Icons.check_box_outline_blank_rounded),
                ],
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 20,
                      height: 50,
                      color: Colors.amber,
                    ),
                    Text('Binnenland'),
                    Icon(Icons.check_box_outline_blank_rounded),
                  ]),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 20,
                      height: 50,
                      color: Colors.blue,
                    ),
                    Text('Voetbal'),
                    Icon(Icons.check_box_outline_blank_rounded),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 20,
                      height: 50,
                      color: Colors.blue,
                    ),
                    Text('Sport'),
                    Icon(Icons.check_box_outline_blank_rounded),
                  ],
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 20,
                        height: 50,
                        color: Colors.blue,
                      ),
                      Text('Motor'),
                      Icon(Icons.check_box_outline_blank_rounded),
                    ]),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 20,
                      height: 50,
                      color: Colors.red,
                    ),
                    Text('Gaming'),
                    Icon(Icons.check_box_outline_blank_rounded),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 20,
                      height: 50,
                      color: Colors.red,
                    ),
                    Text('Esports'),
                    Icon(Icons.check_box_outline_blank_rounded),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 20,
                      height: 50,
                      color: Colors.red,
                    ),
                    Text('Wetenschap'),
                    Icon(Icons.check_box_outline_blank_rounded),
                  ],
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 20,
                        height: 50,
                        color: Colors.red,
                      ),
                      Text('Crypto'),
                      Icon(Icons.check_box_outline_blank_rounded),
                    ]),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
