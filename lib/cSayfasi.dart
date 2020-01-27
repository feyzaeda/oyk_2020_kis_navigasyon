import 'package:flutter/material.dart';

class CSayfasi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: (){
          debugPrint("Butona basmadan geri döndü");
          Navigator.pop(context,true);
          return Future.value(false);
        },
      child: Scaffold(
        appBar: AppBar(
          title: Text("C sayfasi"),
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("C sayfasına hoşgeldiniz"),
              RaisedButton(
                onPressed: (){
                  Navigator.pop(context,true);
                },
                child: Text("Anasayfaya dön ve veri gönder"),
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }

}