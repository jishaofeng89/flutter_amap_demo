import 'package:amap_all_fluttify/amap_all_fluttify.dart';
import 'package:flutter/material.dart';

class AmapDemo01 extends StatefulWidget {
  AmapDemo01({Key key}) : super(key: key);

  @override
  _AmapDemo01State createState() => _AmapDemo01State();
}

class _AmapDemo01State extends State<AmapDemo01> {

  AmapController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('amap_demo_01'),),
      body: AmapView(
        showZoomControl: true,
        zoomLevel: 15,
        maskDelay: Duration(milliseconds: 2000),
        onMapCreated: (controller) async {
          _controller = controller;
        }
      ),
    );
  }
}