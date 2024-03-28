import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FooderLich',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Center(
          child: Text('Bora conhecer 👩‍🍳',
              style: Theme.of(context).textTheme.displayLarge)),
    );
  }
}
