import 'package:cabakusa_flatter/components/appbar_title_widge.dart';
import 'package:cabakusa_flatter/components/slider_widget.dart';
import 'package:cabakusa_flatter/components/variant_button.dart';
import 'package:cabakusa_flatter/constants/app_colors.dart';
import 'package:cabakusa_flatter/models/continents.dart';
import 'package:cabakusa_flatter/models/suroo.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key, required this.suroo, required this.item})
      : super(key: key);
  final List<Suroo> suroo;
  final Continents item;

  @override
  // ignore: library_private_types_in_public_api
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  int index = 0;
  int tuuraJooptor = 0;
  int kataJoooptor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        foregroundColor: AppColors.black,
        backgroundColor: AppColors.bgColor,
        title: AppBatTitleWidget(
          tuuraJooptor: tuuraJooptor,
          kataJoooptor: kataJoooptor,
          item: widget.item,
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          sliderWidget(vali: index),
          const SizedBox(
            height: 30,
          ),
          Text(widget.suroo[index].text, style: const TextStyle(fontSize: 20)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child:
                  Image.asset('assets/images/${widget.suroo[index].image}.jpg'),
            ),
          ),
          variantButton(
            jooptor: widget.suroo[index].jooptor,
            onTap: (isTrue) {
              if (index + 1 == widget.suroo.length) {
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Тестин жыйынтыгы'),
                    content: Text(
                      'Туура жооптор $tuuraJooptor, \n Ката жооптор$kataJoooptor',
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          setState(() {
                            index = 0;
                            tuuraJooptor = 0;
                            kataJoooptor = 0;
                          });

                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Кайрадан баштоо',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                if (isTrue == true) {
                  tuuraJooptor++;
                } else {
                  kataJoooptor++;
                }
                setState(() {
                  index++;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
