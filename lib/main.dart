import 'package:flutter/material.dart';
import 'package:oyk_2020_kis_navigasyon/aSayfasi.dart';
import 'package:oyk_2020_kis_navigasyon/bSayfasi.dart';

import 'cSayfasi.dart';
import 'dSayfasi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigasyon İslemleri"),
          backgroundColor: Colors.grey,
        ),
        body: NavigasyonIslemleri(),
      ),
    );
  }

}

class NavigasyonIslemleri extends StatelessWidget{
  String gonderilenData = "Navigasyon işlemleri sayfasına hoşgeldin :)";
  @override
  Widget build(BuildContext context) {

    return Column(

      children: <Widget>[
        RaisedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ASayfasi()));
          },
          child: Text("A sayfasına git"),
          color: Colors.grey,
        ),


        RaisedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>BSayfasi(gonderilenData)));
          },
          child: Text("B sayfasına veri gönder"),
          color: Colors.grey,
        ),
        RaisedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CSayfasi()),).then((gelenData){debugPrint("pop işleminden gelen veri $gelenData");});
          },
          child: Text("C sayfasından data getir"),
          color: Colors.grey,

        ),
        RaisedButton(
          onPressed: ()
          async {
            //yine navigator işlemlerini bir değere atıyoruz
            String value = await Navigator.push(context,
                new MaterialPageRoute<String>(
                  //navigator ile yönlendirdiğimiz widget
                    builder: (BuildContext context) {
                      //center'ın içinde GestureDetector'a yönlendiriyoruz
                      return Center(
                        child: GestureDetector(
                          //yönlendirilen widget'ta bir container oluşturduk
                            child:  Container(
                                color: Colors.greenAccent,
                                child: Text('Ekran silindi,'
                                    ' geri dönmek için tıklayın',
                                  style: TextStyle(fontSize: 20),
                                  textAlign: TextAlign.center,)
                            ),
                            onTap: () { Navigator.pop(context, "Anasayfaya dönüldü"); }
                        ),
                      );
                    }
                )
            );


            print(value);
          },
          child: new Text("Ekranı değiştirip geri dön"),
        ),
        RaisedButton(
          onPressed: (){
            //aşağıda kendi tanımladığımız foksiyonu çağırıcaz
            _navigateAndDisplaySelection(context);
          },
          child: Text("D sayfasına git, veri tipi getir ve göster"),
        )

      ],
    );
  }

}

_navigateAndDisplaySelection(BuildContext context) async{

  final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => DSayfasi()),);
  Scaffold.of(context)
  ..removeCurrentSnackBar()
  ..showSnackBar(SnackBar(duration: Duration(seconds: 5),content: Text("gelen data $result"),));
}

