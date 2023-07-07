import 'package:flutter/material.dart';
import 'package:shop_controller/core/constants/palette.dart';

class Section extends StatelessWidget {
  final Widget child;
  const Section({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Palette.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(4, 4),
            blurRadius: 8,
            color: Palette.grey,
          )
        ],
      ),
      child: child,
    );
  }
}
