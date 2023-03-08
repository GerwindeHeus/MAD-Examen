import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Favorite extends StatefulWidget {
  final bool isSelected;
  final Color selectedColor;
  final Color normalColor;

  const Favorite({
    super.key,
    required this.isSelected,
    required this.selectedColor,
    required this.normalColor,
  });

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  bool _isSelected = false;

  @override
  void initstate() {
    _isSelected = widget.isSelected;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        onPressed: () {
          setState(() {
            _isSelected = !_isSelected;
          });
        },
        icon: Icon(
          Icons.favorite,
          size: 24,
          color: _isSelected ? widget.selectedColor : widget.normalColor,
        ),
      ),
    );
  }
}
