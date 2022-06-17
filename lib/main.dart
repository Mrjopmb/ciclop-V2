import 'dart:io';
import 'package:ciclop/src/pages/home_page.dart';
import 'package:ciclop/src/routes/routes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    if (kReleaseMode)
      exit(1);
  };
  runApp(MyApp());
  
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ciclop',
      //Routes
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: ( settings ){
        print('Ruta llamada: ${ settings.name }');
        return MaterialPageRoute(
          builder: ( BuildContext context ) => HomePage()
        );
      },
    );
  }
}