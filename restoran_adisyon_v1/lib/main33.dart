import 'package:flutter/material.dart';
import 'package:restoran_adisyon_v1/models/masa_grubu.dart';
import 'package:restoran_adisyon_v1/adisyon.dart';

class MyApp33 extends StatelessWidget{
  static const String routeName = '/main';
  @override
  Widget build(BuildContext context) {
    List<MasaGrubu> liste = List<MasaGrubu>();
    liste.add(MasaGrubu(1, "Teras"));
    liste.add(MasaGrubu(2, "Balkon"));
    liste.add(MasaGrubu(5, "Orta Alan"));
    liste.add(MasaGrubu(3, "Bahçe"));
    liste.add(MasaGrubu(4, "Arka Bahçe"));

    List<Masa> liste2 = List<Masa>();
    for (var i = 1; i < 5; i++) {
      for (var k = 0; k < 15; k++) {
        liste2.add(Masa(k, i, "Masa " + k.toString()));
      }
    }

    // TODO: implement build
    return MaterialApp(
      routes: {
        MyApp33.routeName: (BuildContext context) => MyApp33(),
        Adisyon.routeName: (BuildContext context) => Adisyon(),
      },
      home: DefaultTabController(
          length: 5,
          child: Scaffold(
              appBar: AppBar(
                  title: Text('Adisyon Demo'),
                  bottom: TabBar(
                    tabs: List<Widget>.generate(liste.length, (int index) {
                      print(liste[index].ad);
                      return new Tab(
                          icon: Icon(Icons.dashboard), text: liste[index].ad);
                    }),
                    isScrollable: true,
                  )),
              body: new TabBarView(
                children: List<Widget>.generate(liste.length, (int index) {
                  print(liste[index].ad);
                  return GridView(
                      scrollDirection: Axis.vertical,
                      controller: ScrollController(),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 125.0),
                      children: <Widget>[
                        const SizedBox(height: 30),
                        RaisedButton(
                          onPressed: () {
                            print("TIKLANDI");
                            Navigator.of(context).pushNamed(Adisyon.routeName);
                          },
                          child: new Text("Push to Screen 2"),
                        ),
                      ]);
                }),
              ))),
    );
  }

   
}


/*
void main() {
  runApp(MyApp());
}

*/