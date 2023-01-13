import 'package:cabakusa_flatter/constants/app_text.dart';
import 'package:cabakusa_flatter/models/continents.dart';
import 'package:cabakusa_flatter/pages/test_page.dart';
import 'package:flutter/material.dart';
import '../components/contitnents_card.dart';
import '../constants/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          AppText.gameTitle,
          style: TextStyle(
            color: AppColors.black,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            color: AppColors.blue,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
            color: AppColors.black,
          ),
        ],
      ),
      body: Column(
        children: [
          const Divider(
            height: 10,
            color: AppColors.black,
            indent: 30,
            endIndent: 30,
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: continents.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return ContainentsCard(
                  item: continents[index],
                  onTap: () {
                    if (continents[index].suroo != null) {
                      Navigator.push<void>(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => TestPage(
                            suroo: continents[index].suroo!,
                            item: continents[index],
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('This page is not working!!!'),
                        ),
                      );
                    }
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
