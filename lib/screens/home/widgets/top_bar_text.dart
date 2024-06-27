import 'package:flutter/material.dart';

class TopBarText extends StatelessWidget {
  final String textName;
  final double? textSize;
  final FontWeight? textWeight;
  final Color? textColor;
  const TopBarText(
      {super.key,
      required this.textName,
      this.textSize,
      this.textWeight,
      this.textColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: TextStyle(
        color: textColor,
        fontSize: textSize,
        fontWeight: textWeight,
      ),
    );
  }
}
