import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:sgcm/main.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatelessWidget {
  const MapPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffolding(
      title: 'Karte',
      pageId: 1,
      content: FlutterMap(
        options: MapOptions(
          center: LatLng(48.13713, 11.57540),
          maxZoom: 18.0,
          zoom: 14.0,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                width: 70.0,
                height: 70.0,
                point: LatLng(48.13713, 11.57540),
                builder: (ctx) => IconButton(
                  icon: const Icon(Icons.location_on),
                  color: Colors.red,
                  iconSize: 45,
                  onPressed: () => {
                    showDialog(context: context, builder: (BuildContext context){
                      return const AlertDialog(
                        title: Text("Collectible"),
                        content: Text("An diesem Ort kannst du ein Collectible der Seltenheit 5 finden"),
                      );
                    })
                  },
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}