import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones  = ['Uno','Dos','Tres','Cuatro','Cinco','Seis','Siete','Ocho'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta()
      ),
    );
  }

  List<Widget> _crearitems() {
    List<Widget> lista = new List<Widget>();

    for (String opt in opciones) {
        final temptWidget = ListTile(
          title: Text(opt),
        );       
        lista..add(temptWidget)
            ..add(Divider(color: Colors.redAccent));
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map( ( item ){
        return Column(
          children: <Widget>[
            ListTile(
              title: Text(item),
              subtitle: Text('Subtitulo'),
              leading: Icon(Icons.account_balance_wallet),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: (){},
            ),
            Divider(color: Colors.redAccent,)
          ],
        );
    }).toList();
  }



}