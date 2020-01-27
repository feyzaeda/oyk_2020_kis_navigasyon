import 'package:flutter/material.dart';

class ASayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("A sayfası"),
          backgroundColor: Colors.grey,
        ),
        body: Center(

          child: Row(
            children: <Widget>[
              Text("A sayfasına hoşgeldin")
            ],
          ),
        ),
      ),
    );
  }
}