import 'package:flutter/material.dart';
import 'package:sgcm/main.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffolding(
        content: Text('Home'),
        title: 'Home',
        pageId: 0,
    );
  }
}