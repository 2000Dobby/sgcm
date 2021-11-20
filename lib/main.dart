import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sgcm/friends.dart';
import 'package:sgcm/home.dart';
import 'package:sgcm/inventory.dart';
import 'package:sgcm/map.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([ DeviceOrientation.portraitUp ])
      .then((value) => runApp(const App()));
}

class App extends StatelessWidget{
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'SGCM',
      home: HomePage(),
    );
  }
}

class Scaffolding extends StatelessWidget {
  final Widget content;
  final String title;
  final int pageId;

  const Scaffolding({ required this.content, required this.title, required this.pageId, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        foregroundColor: Colors.white,
        backgroundColor: Colors.deepPurple,
      ),

      body: Center(
        child: content,
      ),

      drawer: NavigationDrawer(pageId: pageId),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  final int pageId;

  const NavigationDrawer({ required this.pageId, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Text(
                'SGCM Menü',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 20,
                 ),
            ),
          ),

          DrawerItem(
              title: 'Home',
              selected: pageId == 0,
              icon: const Icon(Icons.home),
              navigateTo: const HomePage(),
          ),

          DrawerItem(
            title: 'Karte',
            selected: pageId == 1,
            icon: const Icon(Icons.location_on_sharp),
            navigateTo: const MapPage(),
          ),

          DrawerItem(
            title: 'Inventar',
            selected: pageId == 2,
            icon: const Icon(Icons.inventory_2),
            navigateTo: const InventoryPage(),
          ),

          DrawerItem(
            title: 'Freunde',
            selected: pageId == 3,
            icon: const Icon(Icons.people),
            navigateTo: const FriendsPage(),
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String title;
  final bool selected;
  final Icon icon;
  final Widget navigateTo;

  const DrawerItem({ required this.title, required this.selected, required this.icon, required this.navigateTo, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child:  ListTileTheme(
        contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
        selectedTileColor: Colors.purple[100],
        selectedColor: Colors.deepPurple[600],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(7.0)),
        ),

        child: ListTile(
          leading: icon,
          title: Text(
            title,
            style: const TextStyle(
                fontSize: 18
            ),
          ),
          selected: selected,

          onTap: () {
            Navigator.pop(context);
            Navigator.pushReplacement(context, PageRouteBuilder(
                pageBuilder: (context, animation1, animation2) => navigateTo,
                transitionDuration: Duration.zero,
              )
            );
          },
        ),
      ),
    );
  }
}

