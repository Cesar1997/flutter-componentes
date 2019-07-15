import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Mostrar alerta'),
          onPressed: () => _mostrarAlerta(context),
          color: Colors.blue,
          textColor: Colors.white,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ) ,
    );
  }
  
    void _mostrarAlerta(BuildContext context) {
      showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context){
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min, //Si deseamos que al darle click fuera se cierre el dialogo
              children: <Widget>[
                Text('Contenido desde flutter'),
                FlutterLogo(size: 100.0), //Logo de flutter
              ],
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () => Navigator.of(context).pop(),
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        } 
      );
    }
}