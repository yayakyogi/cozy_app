import 'package:cozy_app/theme.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  final int index;
  final int rate;

  Rating({required this.index, required this.rate});

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.star, color: index <= rate ? orangeColor : greyColor);
  }
}
