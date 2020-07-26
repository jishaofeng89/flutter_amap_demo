import 'package:flutter/material.dart';
import 'package:flutter_amap_demo/ui/amap/amap_demo_02.dart';

import 'amap/amap_demo_01.dart';

class DemoListPage extends StatefulWidget {
  DemoListPage({Key key}) : super(key: key);

  @override
  _DemoListPageState createState() => _DemoListPageState();
}

class _DemoListPageState extends State<DemoListPage> {

  var _demoList = [
    AmapDemo01(),
    AmapDemo02(),
  ];

  var _titleList = [
    '实现一个简单的地图',
    '运动轨迹',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('高德地图测试案例'),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: _demoList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Text(index.toString()),
              title: Text(_titleList[index]),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return _demoList[index];
                }));
              },
            );
          },
        ),
      ),
    );
  }
}