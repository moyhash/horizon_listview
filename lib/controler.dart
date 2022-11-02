import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horizon_list/details.dart';

/* buildCarte() {
  return Container(
    height: 200,
    width: 200,
    color: Colors.red,
    child: const Image(
      image: AssetImage('images/laposte.png'),
    ),
  );
} */

buildCarte(CardItems item) {
  return SizedBox(
    width: 200,
    //color: Colors.grey,
    child: Column(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 4 / 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Material(
                child: Ink.image(
                  image: AssetImage(item.urlImage),
                  //fit: BoxFit.cover,
                  child: InkWell(
                    onTap: () => Get.to(
                      () => DetailsPage(item: item),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          item.title,
          style: const TextStyle(
              color: Colors.yellow, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          item.subtitle,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

class CardItems {
  final String urlImage;
  final String title;
  final String subtitle;

  const CardItems({
    required this.urlImage,
    required this.title,
    required this.subtitle,
  });
}

List<CardItems> items = [
  const CardItems(
    urlImage: 'images/Paris.png',
    title: 'Bienvenu a Paris',
    subtitle: 'Paris Cest Magic',
  ),
  const CardItems(
    urlImage: 'images/23.png',
    title: 'Credit Mutuel',
    subtitle: 'Banque et Assurance',
  ),
  const CardItems(
    urlImage: 'images/log.png',
    title: 'FFF',
    subtitle: 'France FootBall',
  ),
  const CardItems(
    urlImage: 'images/adidas.png',
    title: 'Adidas',
    subtitle: 'La Puissance',
  ),
  const CardItems(
    urlImage: 'images/laposte.png',
    title: 'La Poste',
    subtitle: 'La Banque Postal',
  ),
];
