import "package:flutter/material.dart";

import './icons_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget iconCard(String iconName, IconData iconData) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            iconData,
            size: 50.0,
          ),
          SizedBox(height: 30.0),
          Text(iconName)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Brand Icons Example",
      home: Scaffold(
        backgroundColor: Color(0xFFF9F9F9),
        appBar: AppBar(
          title: Text('BrandIcons Example'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return iconCard(
              iconsDataList[index].keys.first,
              iconsDataList[index].values.first,
            );
          },
          itemCount: iconsDataList.length,
        ),
      ),
    );
  }
}
