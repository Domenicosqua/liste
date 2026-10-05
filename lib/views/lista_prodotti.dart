import 'package:flutter/material.dart';

class ListaProdotti extends StatelessWidget {
  ListaProdotti({super.key});

  final List<Map<String, String>> prodotti = [
    {'nome': 'iPhone', 'prezzo': '999€', 'img': 'https://picsum.photos/200'},
    {'nome': 'iPad', 'prezzo': '799€', 'img': 'https://picsum.photos/200'},
    {'nome': 'iMac', 'prezzo': '1999€', 'img': 'https://picsum.photos/200'},
    {'nome': 'iPhone18', 'prezzo': '999€', 'img': 'https://picsum.photos/200'},
    {'nome': 'iPad', 'prezzo': '799€', 'img': 'https://picsum.photos/200'},
    {'nome': 'iMac', 'prezzo': '1999€', 'img': 'https://picsum.photos/200'},
    {
      'nome': 'iPhone Pro Max',
      'prezzo': '1999€',
      'img': 'https://picsum.photos/200',
    },
    {'nome': 'iPad Pro', 'prezzo': '1799€', 'img': 'https://picsum.photos/200'},
    {'nome': 'iMac Pro', 'prezzo': '2999€', 'img': 'https://picsum.photos/200'},
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.5,
        ),
        itemCount: prodotti.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(
                      prodotti[index]['img'] ?? 'Immagine non disponibile',
                    ),
                  ),
                  Text(prodotti[index]['nome'] ?? 'Nome non disponibile'),
                  Text(prodotti[index]['prezzo'] ?? 'prezzo non disponibile'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
