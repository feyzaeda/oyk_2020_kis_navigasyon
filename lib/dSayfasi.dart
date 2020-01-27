import 'package:flutter/material.dart';

class DSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("D sayfası"),
          backgroundColor: Colors.grey,
        ),
        body: Center(

          child: Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                onPressed: (){
                  Navigator.pop(context,6);
                },
                child: Text("Anasayfaya int değer gönder"),
              ),),
              Padding(padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: (){
                    Navigator.pop(context,"Ana sayfaya geri döndün");
                  },
                  child: Text("Anasayfaya string değer gönder"),
                ),),
              Text("D sayfasına hoşgeldin")
            ],
          ),
        ),
      ),
    );
  }
}