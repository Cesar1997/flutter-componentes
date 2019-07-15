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
      elevation: 10.0, //Le pone una sombra
      shape: RoundedRectangleBorder(  //Agregar rectangulo con borde redondeado
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
    final card = Container   (
      //clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage("https://static.photocdn.pt/images/articles/2017_1/iStock-545347988.jpg"),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(microseconds: 200),
            height: 300.0,
            fit: BoxFit.cover, //Para que la imagen se adapte a todo el ancho
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Agregando informacion del card con imagen'),
          )
        ],
      ),
    );

    //Tratar de que la imagen se acople al diseño bordeado 
    //del card
    return Container(
      decoration: BoxDecoration( //Le ponemos el borde circular al contenedor
        borderRadius: BorderRadius.circular(30.0),
        color : Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0) //Posicion de la sombra
          )
        ]
      ),
      child: ClipRRect( //Recorta la imagen para que se acople al diseño
        borderRadius : BorderRadius.circular(30.0),
        child: card,
      ),
      
    );
  }
}

