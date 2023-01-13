import 'package:cabakusa_flatter/constants/app_colors.dart';
import 'package:cabakusa_flatter/models/continents.dart';
import 'package:cabakusa_flatter/models/suroo.dart';
import 'package:flutter/material.dart';

class AppBatTitleWidget extends StatelessWidget {
  const AppBatTitleWidget({
    Key? key,
    required this.item,
    required this.tuuraJooptor,
    required this.kataJoooptor,
  }) : super(key: key);

  final Continents item;
  final int tuuraJooptor;
  final int kataJoooptor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 7),
            child: Row(
              children: [
                Text(
                  '$tuuraJooptor',
                  style: const TextStyle(color: AppColors.green, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    '${northAmericaQuestions.length}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                Text(
                  '$kataJoooptor',
                  style: const TextStyle(
                    color: AppColors.red,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
        Text(
          item.name,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        Row(
          children: [
            SizedBox(
              width: 70,
              height: 30,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Icon(
                    Icons.favorite,
                    color: AppColors.red,
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ],
    );
  }
}
