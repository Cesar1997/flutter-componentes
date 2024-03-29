import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:componentes/src/pages/alert_page.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [ 
        const Locale('en','US'), //Ingles
        const Locale('es','ES') //Español
      ],
      title: 'Material App',
      initialRoute: 'home',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada ${ settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage()
        );
      },
    );
  }
}