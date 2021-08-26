import 'package:flutter/material.dart';
import 'constans.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String message;
  BottomButton({this.onTap, required this.message});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            message,
            style: kbottomBtn,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
