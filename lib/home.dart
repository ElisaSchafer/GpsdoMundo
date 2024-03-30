// ignore_for_file: always_declare_return_types

import 'package:flutter/material.dart';
// 1
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';
// 12
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  //  Center(
    // 1 // 7
   int _selectedIndex = 0;
  //  8
   static List<Widget> pages = <Widget>[
    const Card1(),
    Container(color: Colors.red),
    const Card2(),
    Container(color: Colors.green),
    // TODO: Substitua pelo Card3
    const Card3(),
    Container(color: Colors.blue)
  ];
  // 9
    void _onItemTapped(int index) {
      setState(() {
       _selectedIndex = index;
    });
   }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 4
      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor: 
        Theme.of(context).textSelectionTheme.selectionColor,
        // 10
        currentIndex: _selectedIndex,
        // 11
        onTap: _onItemTapped,
        // 6
        items: const [
          BottomNavigationBarItem
          (icon: Icon(Icons.card_giftcard),
          label: 'Card',
          ),
          BottomNavigationBarItem
          (icon: Icon(Icons.card_giftcard),
          label: 'Card2',
          ),
          BottomNavigationBarItem
          (icon: Icon(Icons.card_giftcard),
          label: 'Card3',
          ),
          ],
        ),
        
      appBar: AppBar(
        title: Text(
          'FooderLich',
      // 2
          style: Theme.of(context).textTheme.titleLarge,
        ),

      ),
      body: Center(
      child: Text('Bora conhecer 👩‍🍳',
      // 3
      style: Theme.of(context).textTheme.displayLarge)),
      // TODO: Adicione o botão de barra de navegação
    );
    
  }
}

       
