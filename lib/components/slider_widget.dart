import 'package:cabakusa_flatter/constants/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class sliderWidget extends StatelessWidget {
  const sliderWidget({
    Key? key,
    required this.vali,
  }) : super(key: key);
  final int vali;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SliderTheme(
        data: SliderThemeData(
          overlayShape: SliderComponentShape.noOverlay,
          thumbShape: SliderComponentShape.noThumb,
        ),
        child: Slider(
          activeColor: AppColors.active,
          inactiveColor: AppColors.inActiv,
          value: vali.toDouble(),
          max: 10,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
