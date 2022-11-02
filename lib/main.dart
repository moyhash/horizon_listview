import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:horizon_list/controler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: const Text('Horizontal ListView'),
        centerTitle: true,
      ),
      // Perfect for large Amount of Widggt
      body: SizedBox(
        height: 200,
        child: ListView.separated(
          padding: const EdgeInsets.all(8),
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          separatorBuilder: (context, _) => const SizedBox(width: 2),
          itemBuilder: (context, index) => buildCarte(items[index]),
        ),
      ),
    );
  }
}
