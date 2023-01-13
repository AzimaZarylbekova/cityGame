class Suroo {
  const Suroo({
    required this.text,
    required this.image,
    required this.jooptor,
  });

  final String text;
  final String image;
  final List<Joop> jooptor;
}

class Joop {
  const Joop({
    required this.text,
    this.isTrue = false,
  });

  final String text;
  final bool isTrue;
}

List<Suroo> northAmericaQuestions = [s1, s2, s3, s4, s5, s6, s7, s8];

const s1 = Suroo(
  text: 'Бул үй кайсыл шаарда жайгашкан?',
  image: 'chikago1',
  jooptor: [
    Joop(text: 'Нью-Йорк'),
    Joop(text: 'Вашинктон'),
    Joop(text: 'Чикаго', isTrue: true),
    Joop(text: 'Лондон'),
  ],
);

const s2 = Suroo(
  text: 'Гавана кайсыл өлкөнүн борбору ? ',
  image: 'gavana',
  jooptor: [
    Joop(text: 'Панама'),
    Joop(text: 'Чили'),
    Joop(text: 'Аргентина'),
    Joop(text: 'Куба', isTrue: true),
  ],
);

const s3 = Suroo(
  text: 'Бул айкел кайсыл шаарда жайгашкан?',
  image: 'iork2',
  jooptor: [
    Joop(text: 'Нью-Йорк', isTrue: true),
    Joop(text: 'Вашинктон'),
    Joop(text: 'Канада'),
    Joop(text: 'Ангилья'),
  ],
);

const s4 = Suroo(
  text: 'Мариго кайсыл өлкөнүн борбору ?',
  image: 'marigo',
  jooptor: [
    Joop(text: 'Испания'),
    Joop(text: 'Сен-Мартен', isTrue: true),
    Joop(text: 'Аргентина'),
    Joop(text: 'Швейцария'),
  ],
);

const s5 = Suroo(
  text: 'Мехико кайсыл өлкөнүн борбору ?',
  image: 'meksika',
  jooptor: [
    Joop(text: 'Уругвай'),
    Joop(text: 'Тайланд'),
    Joop(text: 'Мексика', isTrue: true),
    Joop(text: 'Колумбия'),
  ],
);

const s6 = Suroo(
  text: 'Оттава кайсыл өлкөнүн борбору ?',
  image: 'otava3',
  jooptor: [
    Joop(text: 'Канада', isTrue: true),
    Joop(text: 'Италия'),
    Joop(text: 'США'),
    Joop(text: 'Бразилия'),
  ],
);

const s7 = Suroo(
  text: 'Валли кайсыл өлкөнүн борбору ?',
  image: 'vali',
  jooptor: [
    Joop(text: 'Аляска'),
    Joop(text: 'Гаваи'),
    Joop(text: 'Сидней'),
    Joop(text: 'Ангилья', isTrue: true),
  ],
);

const s8 = Suroo(
  text: 'АКШ өлкөсүнүн борбору ?',
  image: 'vash',
  jooptor: [
    Joop(text: 'Нью-Йорк'),
    Joop(text: 'Вашинктон', isTrue: true),
    Joop(text: 'Гаваи'),
    Joop(text: 'Чикаго'),
  ],
);
