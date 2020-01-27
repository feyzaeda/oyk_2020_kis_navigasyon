import 'package:flutter/material.dart';

class BSayfasi extends StatelessWidget{
  String gelenData;
  BSayfasi(this.gelenData);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("B sayfası"),
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("B sayfasına hoşgeldin"),
              Text(gelenData)
            ],
          ),
        ),
      ),
    );

  }
}
