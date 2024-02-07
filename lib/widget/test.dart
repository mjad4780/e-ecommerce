import 'package:e_ecommerce/core/assets2/app_assets.dart';

class ClassName {
  final int id;
  final int price;
  final String name;
  final String image;
  final String decs;

  ClassName(
      {required this.name,
      required this.price,
      required this.id,
      required this.image,
      required this.decs});
}

List<ClassName> hello = [
  ClassName(
      name: 'mohamed',
      price: 22,
      id: 1,
      image: Assets.imagesSplashScreen012x,
      decs: 'decssbadbakcbv vnklsvkvskhsaklhsa'),
  ClassName(
      name: 'Ali',
      price: 33,
      id: 2,
      image: Assets.imagesPhoto,
      decs: 's,xzjkbcvsgdcvigcvsdnv'),
  ClassName(
      name: 'hassen',
      price: 66,
      id: 3,
      image: Assets.imagesPexelsPhoto911677,
      decs: 'ioewyfgizkbcvbiuasiohasdc'),
  ClassName(
      name: 'Adel',
      price: 77,
      id: 4,
      image: Assets.imagesImage,
      decs: 'sssssssssssssssssssssssssssssssy8y')
];

plus() {
  int gg = 0;
  hello.forEach((e) {
    gg += e.price;
  });
  return gg;
}
