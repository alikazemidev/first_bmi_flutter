import 'package:flutter/material.dart';
import 'constans.dart';

class IconContent extends StatelessWidget {
  final String textCard;
  final IconData iconCard;

  const IconContent({required this.textCard, required this.iconCard});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconCard,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          textCard,
          style: textCardStyle,
        ),
      ],
    );
  }
}
