import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int _counter = 0;
  String _nombre = "";
  String _email  = "";
  String _fecha  = "";
  TextEditingController _inputFieldDateController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Inputs de texto')
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),

          _crearPersona()
        ],
      )
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences, //Pone la letra capital
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras $_counter'),
        hintText: 'Nombre de la persona', //placeholder dentro del input,
        labelText: 'Nombre',
        helperText: 'Sólo es el nombre',
        suffixIcon: Icon(Icons.accessibility), //Icono lado derecho dentro del input
        icon : Icon( Icons.account_circle ), //Icono lado izquierdo fuera del input
      ),
      onChanged: (valor){
        setState(() {
            _counter = valor.length;
            _nombre  = valor;
        });
      },
    );
  }

 Widget _crearEmail() {
   return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Email', //placeholder dentro del input,
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email), //Icono lado derecho dentro del input
        icon : Icon( Icons.email), //Icono lado izquierdo fuera del input
      ),
      onChanged: (valor) => setState((){
        _email = valor;
      }),
    );
 }


  _crearPassword() {
     return TextField(
      obscureText: true,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Password', //placeholder dentro del input,
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock), //Icono lado derecho dentro del input
        icon : Icon( Icons.lock), //Icono lado izquierdo fuera del input
      ),
      onChanged: (valor) => setState((){
        print(valor);
      }),
    );
  }



  Widget _crearPersona() {
   return ListTile(
     title: Text('Nombre es : $_nombre'),
     subtitle: Text('Email $_email'),
   );
 }

  _crearFecha(BuildContext context) {
    return TextField(
      controller: _inputFieldDateController,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Fecha', //placeholder dentro del input,
        labelText: 'Fecha',
        suffixIcon: Icon(Icons.perm_contact_calendar), //Icono lado derecho dentro del input
        icon : Icon( Icons.calendar_today), //Icono lado izquierdo fuera del input
      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate( context );
      },
    ); 
  }

  void _selectDate(BuildContext context) async{
    DateTime picked = await showDatePicker(
      locale: Locale('es','ES'),
      context : context,
      initialDate : new DateTime.now(),
      firstDate : new DateTime(2018),
      lastDate : new DateTime(2025)
    );

    if(picked != null){
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha; 
      });
    }
  }

}