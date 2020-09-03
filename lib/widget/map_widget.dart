import 'package:disko_app/models/event_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class MapWidget extends StatelessWidget {
  EventModel eventModel;

  MapWidget({this.eventModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 350,
      child: FlutterMap(
        options: new MapOptions(
          center: new LatLng(eventModel.lat, eventModel.lng),
          zoom: 16.5,
        ),
        layers: [
          new TileLayerOptions(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}",
            additionalOptions: {
              'accessToken':
                  'sk.eyJ1IjoibGV4bHV0dGVya2luZyIsImEiOiJja2VpdHo3czgwbzA0MnptdW84dDZhb2t6In0.8ELH6R4wjOvE3ypczF_xbw',
              'id': 'mapbox/light-v10',
            },
          ),
          new MarkerLayerOptions(
            markers: [
              new Marker(
                width: 220.0,
                height: 80.0,
                point: new LatLng(eventModel.lat, eventModel.lng),
                builder: (ctx) => new Container(
                    child: Icon(
                  Icons.pin_drop,
                  size: 25,
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
