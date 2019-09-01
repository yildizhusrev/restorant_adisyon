import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

class MyApp2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(title: 'Adisyon Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20.0),
            crossAxisSpacing: 3.0,
            crossAxisCount: 3,
            children: List.generate(100, (index) {
              return Container(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: GridTile(
                    
                    footer: Text(
                      'Masa $index',
                      textAlign: TextAlign.center,
                    ),
                    //header: Text(
                    //  'SubItem $index',
                    //  textAlign: TextAlign.center,
                    //),
                    child: Icon(Icons.tablet,
                        size: 40.0, color: Colors.white30),
                  ),
                ),
                color: Colors.blue[300],
                margin: EdgeInsets.all(3.0),
              );
            }))
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
