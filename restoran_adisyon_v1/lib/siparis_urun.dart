import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'models/siparisKategorileri.dart';

class SiparisUrun extends StatefulWidget {
  static final String routeName = 'SiparisKategori';

  @override
  State<StatefulWidget> createState() => SiparisUrunState();
}

class SiparisUrunState extends State {
  var liste2 = [
    SiparisKategorileri(1, "Adana Dürüm"),
    SiparisKategorileri(1, "Urfa Dürüm"),
    SiparisKategorileri(1, "Kuzu Pirzola"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Kategori Ürünleri"),
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
                  onPressed: () {},
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
