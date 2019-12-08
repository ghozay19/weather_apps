import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(30)),
                Row(
                  children: <Widget>[
                    Expanded(child: Text("Hi Gilang"), flex: 1),
                    Expanded(child: Icon(Icons.search), flex: 1),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(child: Image.asset('assets/images/sun.png'), flex: 1),
                    Expanded(
                        child: Column(
                          children: <Widget>[Text("Kota"), Text("Suhu")],
                        ),
                        flex: 1)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(flex: 1, child: Center(child: Text("Hari")))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(flex: 1, child: Center(child: Text("Tanggal")))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Center(
                            child: RaisedButton(
                              color: Colors.lightBlue,
                              child: Text("Show Weather",style: TextStyle(color: Colors.white),),
                              onPressed: () {},
                            )))
                  ],
                ),
              ],
            )));
  }
}