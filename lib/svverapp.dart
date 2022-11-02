import 'package:flutter/material.dart';

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
      body: CustomScrollView(
        slivers: [
          // Sliver AppBar
          SliverAppBar(
            title: const Text('S L I V E R A P P B A R'),
            leading: const Icon(Icons.menu),
            actions: const [
              Icon(Icons.settings),
            ],

            //centerTitle: true,
            expandedHeight: 300,
            //floating: true
            //pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              //background: image.asset(''),
              background: Container(
                color: Colors.orange,
              ),
              title: const Text('S L I V E R A P P B A R'),
            ),
          ),

          //Sliver Content
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
