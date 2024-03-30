import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';
import 'home.dart';

void main() {
  // 1
  runApp(const GpsDoMundo());
}

class GpsDoMundo extends StatelessWidget {
  // 2
  const GpsDoMundo({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = GpsdoMundoTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'GPS do Mundo',
      // home: const Home(),
      // 4
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'FooderLich',
            style: theme.textTheme.titleLarge,
          ),
        ),
        body: Center(
          child:
              Text('Bora conhecer 👩‍🍳', 
              style: theme.textTheme.displayLarge),
        ),
      ),
    );
  }
}
