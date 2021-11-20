import 'package:flutter/material.dart';
import 'package:sgcm/main.dart';

class MapPage extends StatelessWidget {
  const MapPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffolding(
      content: Text('Karte'),
      title: 'Karte',
      pageId: 1,
    );
  }
}