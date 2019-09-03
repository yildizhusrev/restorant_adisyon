import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart' as prefix1;
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:restoran_adisyon_v1/siparis_kategori.dart';
import 'package:restoran_adisyon_v1/styless.dart';

class Urun {
  String name;
  int price;

  Urun(String name, int price) {
    this.name = name;
    this.price = price;
  }
}

var urunItems = [
  Urun("Kaşarlı Pide", 1),
  Urun("Kıymalı Pide", 2),
  Urun("Kuşbaşılı Pide", 3),
  Urun("Lahmacun", 3),
  Urun("Urfa", 4),
  Urun("Adana", 8),
  Urun("ayran", 4)
];

class Adisyon extends StatefulWidget {
  static final String routeName = 'Adisyon';
  @override
  AdisyonApp createState() {
    return AdisyonApp();
  }
}

class AdisyonApp extends State {
  var total = 0;
  bool _isVisible = false;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void setTotal(int price) {
    setState(() {
      total += price;
    });
  }

  @override
  Widget build(BuildContext context) {
    String name; // ADD FROM HERE
    String email;
    String location;
    String pin;
    DateTime dateTime = DateTime.now();
    final List<String> items = List<String>.generate(15, (i) => "Item $i");

    Widget _buildTableName() {
      return Card(
        color: Colors.amber,
        child: ListTile(
          leading: Icon(Icons.dashboard),
          title: Text('MASA : B12'),
          trailing: Icon(Icons.more_vert),
        ),
      );
    }

    Widget _buildCustomerName() {
      return Visibility(
        visible: _isVisible,
        child: Card(
          color: Colors.blueAccent,
          child: ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Cari : Ahmet Mehmet CAN'),
            trailing: Icon(Icons.more_vert),
          ),
        ),
      );
    }

    Widget _buildTotal() {
      return Card(
        color: Colors.green,
        child: ListTile(
          leading: Icon(Icons.dashboard),
          title: Text('Toplam : 125 TL'),
        ),
      );
    }

    Widget _buildNameField() {
      return CupertinoTextField(
        prefix: const Icon(
          CupertinoIcons.person_solid,
          color: CupertinoColors.lightBackgroundGray,
          size: 28,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
        clearButtonMode: OverlayVisibilityMode.editing,
        textCapitalization: TextCapitalization.words,
        autocorrect: false,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0,
              color: CupertinoColors.inactiveGray,
            ),
          ),
        ),
        placeholder: 'Masa',
        onChanged: (newName) {},
      );
    }

    Widget _buildEmailField() {
      return const CupertinoTextField(
        prefix: Icon(
          CupertinoIcons.mail_solid,
          color: CupertinoColors.lightBackgroundGray,
          size: 28,
        ),
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
        clearButtonMode: OverlayVisibilityMode.editing,
        keyboardType: TextInputType.emailAddress,
        autocorrect: false,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0,
              color: CupertinoColors.inactiveGray,
            ),
          ),
        ),
        placeholder: 'Müsteri',
      );
    }

    Widget _buildLocationField() {
      return const CupertinoTextField(
        prefix: Icon(
          CupertinoIcons.location_solid,
          color: CupertinoColors.lightBackgroundGray,
          size: 28,
        ),
        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 12),
        clearButtonMode: OverlayVisibilityMode.editing,
        textCapitalization: TextCapitalization.words,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0,
              color: CupertinoColors.inactiveGray,
            ),
          ),
        ),
        placeholder: 'TOPLAM',
      );
    }

    _buildAdisyonlist2() {
      Icon icon = const Icon(
        Icons.check_box,
        color: Colors.red,
      );
      return ListView.builder(
          itemCount: urunItems.length,
          itemBuilder: (BuildContext ctxt, int index) {
            total += urunItems[index].price;
            return new ListTile(
                leading: icon,
                title: new Text(urunItems[index].name),
                trailing: new Text(urunItems[index].price.toString() + " TL"),
                onTap: () {},
                onLongPress: () {});
          });
    }

/*
    Widget _buildUrunItems() {
      Icon icon = const Icon(Icons.info);

      ListTile listTile = new ListTile(
          leading: icon,
          title: new Text(item.name),
          trailing: new Text("RM " + item.price.toStringAsFixed(2)),
          onTap: () {},
          onLongPress: () {});

      return new Card(
        child: new Column(
            mainAxisSize: MainAxisSize.min, children: <Widget>[listTile]),
      );
    }*/

    void _showDialog() {
      // flutter defined function
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Alert Dialog title"),
            content: new Text("Alert Dialog body"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text("MASA 21")),
      body: Container(
        child: Column(
          children: <Widget>[
            // _buildTableName(),
            _buildCustomerName(),
            _buildTotal(),
            new Expanded(child: _buildAdisyonlist2()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          //showToast()

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SiparisKategori()),
          )
        },
        tooltip: 'Sipariş Ekle',
        child: Icon(Icons.add),
      ),
    );
  }
}
