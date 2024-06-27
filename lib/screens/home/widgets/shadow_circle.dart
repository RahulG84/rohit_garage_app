import 'package:flutter/material.dart';

class ShadowCircle extends StatelessWidget {
  final String numbers;
  final String jobName;
  final double? circleWidth;
  final double? circleHeight;
  final BorderRadiusGeometry? borderRadius;
  const ShadowCircle({
    super.key,
    required this.numbers,
    required this.jobName,
    this.circleWidth,
    this.circleHeight,
    this.borderRadius,
  });

  void onTaps() {
    print('object');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => onTaps(),
          child: Container(
            width: circleWidth,
            height: circleHeight,
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 8,
                  spreadRadius: 3,
                  offset: Offset(3, 3),
                )
              ],
            ),
            child: Center(
              child: Text(
                numbers,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          jobName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
