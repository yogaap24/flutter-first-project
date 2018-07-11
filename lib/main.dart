import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title: "Flutter",
    home: new Pageone(),
  ));
}

class Pageone extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: new AppBar(
        backgroundColor: Colors.blueAccent[400],
        leading: new Icon(Icons.home),
        title: new Center(child: new Text("Flutter"),),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Cardsaya(icon: Icons.home, teks: "Home", warnaicon: Colors.grey[600],),
            new Cardsaya(icon: Icons.favorite, teks: "Favorite", warnaicon: Colors.red[600],),
            new Cardsaya(icon: Icons.place, teks: "Place", warnaicon: Colors.blue[300],),
            new Cardsaya(icon: Icons.settings, teks: "Settings", warnaicon: Colors.black,),
          ],
        ),
      ),
    );
  }
}
class Cardsaya extends StatelessWidget{

  Cardsaya ({this.icon, this.teks, this.warnaicon});

  final IconData icon;
  final String teks;
  final Color warnaicon;

  @override
  Widget build(BuildContext context){
    return new Container(
      padding: new EdgeInsets.all(2.0),
        child: new Card(
              child: 
              new Column(
                children: <Widget>[
                  new Icon(
                    icon,
                    size: 40.0, 
                    color: warnaicon,
                    ),
                  new Text(
                    teks, 
                    style: new TextStyle(fontSize: 20.0),
                    )
                ],
              )
            ),
    );
  }
}