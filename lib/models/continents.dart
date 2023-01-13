import 'package:cabakusa_flatter/models/suroo.dart';
import 'package:flutter/material.dart';

import '../constants/app_text.dart';

class Continents {
  const Continents({
    required this.name,
    required this.icon,
    required this.color,
    this.suroo,
  });

  final String name;
  final String icon;
  final Color color;
  final List<Suroo>? suroo;
}

const africa = Continents(
  name: AppText.africa,
  icon: 'africa',
  color: Color(0XFFFEEF35),
);

const asia = Continents(
  name: AppText.asia,
  icon: 'asia',
  color: Color(0xFFFE8181),
);

const australia = Continents(
  name: AppText.australia,
  icon: 'australia',
  color: Color(0xFF60F783),
);

const europe = Continents(
  name: AppText.europe,
  icon: 'europe',
  color: Color(0xFF81A2FE),
);

final northAmerica = Continents(
  name: AppText.northAmerica,
  icon: 'north_america',
  color: const Color(0xFFEB1000),
  suroo: northAmericaQuestions,
);

const southAmerica = Continents(
  name: AppText.southAmerica,
  icon: 'south_america',
  color: Color(0xFFE5AAE5),
);

List<Continents> continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia,
];
