import 'package:flutter/material.dart';
import 'package:restoran_adisyon_v1/models/masa_grubu.dart';
import 'package:restoran_adisyon_v1/adisyon.dart';
import 'package:restoran_adisyon_v1/siparis_kategori.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const String routeName = '/main';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(routes: {
      // MyApp.routeName: (BuildContext context) => MyApp(),
      Adisyon.routeName: (BuildContext context) => Adisyon(),
      SiparisKategori.routeName: (BuildContext context) => SiparisKategori(),
    }, home: FirstRoute());
  }
}

class FirstRoute extends StatelessWidget {
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
    return DefaultTabController(
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
                  children: List.generate(liste2.length, (index) {
                    return Container(
                      padding: EdgeInsets.all(2.0),
                      child: Center(
                        child: FlatButton(
                          onPressed: () {
                            print("object");
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Adisyon()),
                            );
                          },
                          child: Text(
                            liste2[index].ad,
                          ),
                        ),
                      ),
                      color: Colors.blue[400],
                      margin: EdgeInsets.all(1.0),
                    );
                  }),
                );
              }),
            )));
  }
}

void main() {
  runApp(MyApp());
}
