import 'dart:developer';
import 'package:flutter/material.dart';
import 'gpsdomundo_theme.dart';
import 'main.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/3/3a/Parque_lage_RJ.jps'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Stack(
          children: [
            // TODO: Adicionar um BoxDecoration com sobreposição escura
            Container(
              decoration: BoxDecoration(
                // 1
                color: Colors.black.withOpacity(0.6),
                // 2
                borderRadius: const BorderRadius.all(Radius.circular(10.0))
              ),
            ),
            // TODO: Adicionar um Conatainer, Column, Icon e Texto
            Container(
              // 3
              padding: const EdgeInsets.all(16),
              // 4
              child: Column(
                // 5
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 6
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  // 7
                  const SizedBox(height: 8),
                  Text(
                    'Guia Turístico',
                    style: GpsdoMundoTheme.darkTextTheme.displayMedium,
                  ),
                  // 9
                  const SizedBox(height: 30,),
                ],
              )
            ),
            // TODO: Adicionar um widget Center com filhos do Widget Chip
            Center(
              // 11
              child: Wrap(
                // 12
                alignment: WrapAlignment.start,
                // 13
                spacing: 12,
                // 14
                runSpacing: 12,
                // 15
                children: [
                  Chip(
                    label: Text('Natureza',
                      style: GpsdoMundoTheme.darkTextTheme.bodyLarge),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: (){
                        log('delete');
                      },
                  ),
                  Chip(
                    label: Text('Água',
                      style: GpsdoMundoTheme.darkTextTheme.bodyLarge),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: (){
                        log('delete');
                      },
                  ),
                  Chip(
                    label: Text('Arquitetura',
                      style: GpsdoMundoTheme.darkTextTheme.bodyLarge),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: (){
                        log('delete');
                      },
                  ),
                ],
              )
            )
          ],
        )
      )
    );
  }
}

class GpsDoMundoTheme {
}