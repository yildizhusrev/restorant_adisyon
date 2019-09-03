import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:restoran_adisyon_v1/siparis_urun.dart';

import 'models/siparisKategorileri.dart';

class SiparisKategori extends StatefulWidget {
  static final String routeName = 'SiparisKategori';

  @override
  State<StatefulWidget> createState() => SiparisState();
}

class SiparisState extends State {
  var liste2 = [
    SiparisKategorileri(1, "Fast Food"),
    SiparisKategorileri(1, "Izgara"),
    SiparisKategorileri(1, "İçeçek"),
    SiparisKategorileri(1, "Tatlı"),
    SiparisKategorileri(1, "Çorba"),
    SiparisKategorileri(1, "Pide")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Urun Kategorileri"),
        ),
        body: GridView(
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
                      MaterialPageRoute(builder: (context) => SiparisUrun()),
                    );
                  },
                  child: Text(
                    liste2[index].name,
                  ),
                ),
              ),
              color: Colors.blue[400],
              margin: EdgeInsets.all(1.0),
            );
          }),
        ));
  }
}
