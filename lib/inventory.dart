import 'package:flutter/material.dart';
import 'package:sgcm/main.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffolding(
      title: 'Inventar',
      pageId: 2,
      content: GridView.builder(
        itemCount: 10,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
        ),
        itemBuilder: (context, index) {
          return const VideoCard();
        },
      ),
    );
  }
}

class VideoCard extends StatelessWidget {

  const VideoCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('Eisbären'),
            subtitle: Text(
              'Level 2',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Viele Eisbären sterben aufgrund der Klimaerwärmung',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          TextButton(
            onPressed: () {
            },
            child: const Text('Video ansehen'),
          ),
        ],
      ),
    );
  }
}