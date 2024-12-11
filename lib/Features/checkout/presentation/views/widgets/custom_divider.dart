import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      thickness: 2,
      color: const Color(0xffC7C7C7),
    );
  }
}
