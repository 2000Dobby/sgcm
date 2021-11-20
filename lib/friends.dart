import 'package:flutter/material.dart';
import 'package:sgcm/main.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffolding(
      content: Text('Freunde'),
      title: 'Freunde',
      pageId: 3,
    );
  }
}