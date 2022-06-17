import 'package:ciclop/src/pages/desktop/index_desktop.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //TextStyles
  TextStyle tittleTextStyle = GoogleFonts.montserrat(
      textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(94, 95, 93, 1)));

  TextStyle subtittleTextStyle = GoogleFonts.montserrat(
      textStyle: const TextStyle(
          fontSize: 12,
          //fontWeight: FontWeight.bold,
          color: Color.fromRGBO(94, 95, 93, 1)));

  @override
  Widget build(BuildContext context) {
    return selector();
  }

  Widget selector() {
    if (kIsWeb) {
      return _error();
    } else {
      String _platform = Platform.operatingSystem;
      switch (_platform) {
        case 'windows':
          return IndexDesktopPage();
        default:
          return _error();
      }
    }
  }

  Widget _error() {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Ha ocurrido un error inesperado',
                style: tittleTextStyle,
              ),
              Text(
                'Por favor reinicie la aplicación',
                style: subtittleTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
