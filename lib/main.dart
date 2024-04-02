import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';
import 'home.dart';

// 5
void main() {
  runApp(const GpsDoMundo());
}
// 2
class GpsDoMundo extends StatelessWidget {
  const GpsDoMundo({super.key});
// 3
  @override
  Widget build(BuildContext context) {
    final theme = GpsdoMundoTheme.dark();

    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}