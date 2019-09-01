import 'package:flutter/material.dart';
import 'package:restoran_adisyon_v1/models/masa_grubu.dart';

class MyApp extends StatelessWidget {
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
      home: DefaultTabController(
          length: 5,
          child: Scaffold(
              appBar: AppBar(
                  title: Text('Grid Demo'),
                  bottom: TabBar(
                    tabs: List<Widget>.generate(liste.length, (int index) {
                      print(liste[index].ad);
                      return new Tab(
                          icon: Icon(Icons.directions_car),
                          text: liste[index].ad);
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
                        maxCrossAxisExtent: 150.0),
                    children: List.generate(liste2.length, (index) {
                      return Container(
                        padding: EdgeInsets.all(2.0),
                        child: Center(
                          child: FlatButton(
                            onPressed: () {
                              /*...*/
                            },
                            child: Text(
                             liste2[index].ad ,
                            ),
                          ),
                        ),
                        color: Colors.blue[400],
                        margin: EdgeInsets.all(1.0),
                      );
                    }),
                  );
                }),
              ))),
    );
  }
}

void main() {
  runApp(MyApp());
}
