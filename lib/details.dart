import 'package:flutter/material.dart';
import 'package:horizon_list/controler.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key, required this.item}) : super(key: key);

  // class & constructor objectt
  final CardItems item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text(item.title),
        centerTitle: true,
      ),
      // Perfect for large Amount of Widggt
      body: Column(children: [
        AspectRatio(
          aspectRatio: 4 / 3,
          child: Image.asset(
            item.urlImage,
            fit: BoxFit.cover,
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
      ]),
    );
  }
}
