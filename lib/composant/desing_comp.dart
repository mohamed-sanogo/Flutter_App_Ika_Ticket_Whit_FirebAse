import 'package:flutter/material.dart';
import 'package:ika_ticket/composant/color_comp.dart';

class TopLeftShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: AppColors.primaryColor.withOpacity(0.1),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
