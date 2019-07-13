import 'package:flutter/material.dart';
class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( 
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Soy un titulo'),
            subtitle: Text('Aca estamos mostrando una tarjeta como subtitulo de flutter . Solo para demostrar que es una lista dentro de un card'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Text('Cancelar'),
              ),
              FlatButton(
                onPressed: (){},
                child: Text('Ok'),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage("https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg"),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(microseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Agregando informacion del card con imagen'),
          )
        ],
      ),
    );
  }
}

