import 'package:flutter/material.dart';

import 'app_colors.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key,  required this.icon, required this.onPressed});
  final Widget icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
      ),
      fillColor: AppColors.deepBlue,
      constraints: const BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
      child: icon,
    );
  }
}