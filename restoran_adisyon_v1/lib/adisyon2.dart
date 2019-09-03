import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Adisyon2 extends StatelessWidget {
  static final String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Adisyon işlemleri"),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    FlatButton(
                  color: Colors.blue,
                  onPressed: (){},
                  child: Text("data"),
                ),FlatButton(
                  color: Colors.blue,
                  onPressed: (){},
                  child: Text("data"),
                ),FlatButton(
                  color: Colors.blue,
                  onPressed: (){},
                  child: Text("data"),
                ),FlatButton(
                  color: Colors.blue,
                  onPressed: (){},
                  child: Text("data"),
                ),
                  ],
                )
                
              ],
            )


          ],
        )
        );
  }
}
