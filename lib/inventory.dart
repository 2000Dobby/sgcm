import 'package:flutter/material.dart';
import 'package:sgcm/main.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffolding(
      content: Text('Inventar'),
      title: 'Inventar',
      pageId: 2,
    );
  }
}