import 'package:flutter/material.dart';

import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
//Pages
import 'package:componentes/src/pages/alert_page.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

 Widget _lista() {
   return FutureBuilder(
     future: menuProvider.cargarData(),
     initialData: [],
     builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
      print('builder');
      print(snapshot.data);
      return ListView(
        children : _listaItems(snapshot.data,context )
      );
     },
   );
 }

 List<Widget> _listaItems(List<dynamic> lista,BuildContext context) {
  List<Widget> opciones = new List<Widget>();
  lista.forEach((data) {
    var widget = ListTile(
      title: Text(data['texto']),
      leading: getIcon(data['icon']),
      trailing: Icon(Icons.arrow_right,color: Colors.blue,),
      onTap: () {
        Navigator.pushNamed(context, data['ruta']);
      },
    );

    opciones..add(widget)
          ..add(Divider());
  });
  return opciones;
 }
}