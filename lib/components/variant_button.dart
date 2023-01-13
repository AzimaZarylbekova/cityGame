import 'package:cabakusa_flatter/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../models/suroo.dart';

// ignore: camel_case_types
class variantButton extends StatelessWidget {
  const variantButton({
    Key? key,
    required this.jooptor,
    required this.onTap,
  }) : super(key: key);
  final List<Joop> jooptor;
  final Function(bool) onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 148,
        ),
        itemBuilder: (context, index) {
          return Card(
            color: AppColors.grey,
            child: InkWell(
              onTap: () {
                onTap(jooptor[index].isTrue);
              },
              child: Center(
                child: Text(
                  jooptor[index].text,
                  style: const TextStyle(fontSize: 25),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
