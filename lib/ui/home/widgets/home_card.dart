import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      margin: EdgeInsets.zero,
      color: Colors.blueAccent.withAlpha(30),
      child: Container(
        constraints: BoxConstraints(minWidth: 200),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 40,
          children: [
            Icon(
              Icons.library_add,
              color: Colors.blueAccent,
            ),
            Text('Adicionar venda personalizada'),
          ],
        ),
      ),
    );
  }
}
