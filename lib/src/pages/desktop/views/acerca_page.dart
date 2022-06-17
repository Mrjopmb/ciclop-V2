import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcercaDePage extends StatefulWidget {
  AcercaDePage({Key? key}) : super(key: key);

  @override
  State<AcercaDePage> createState() => _AcercaDePageState();
}

class _AcercaDePageState extends State<AcercaDePage> {
  //Textos
  String resumenText =
      'Solución integral para soportar el proceso operativo de entrega de correspondencia y envios para el servicio postal mexicano';
  String tittleText = 'Instituto Politecnico Nacional';
  String subtittleText = '(C) Centro de Investigación en Computación';
  //Colors
  Color _rose = Color.fromRGBO(237, 0, 125, 1);
  Color _green = Color.fromRGBO(0, 0, 237, 1);
  Color _gray = Color.fromRGBO(195, 195, 195, 1);
  Color _white = Color.fromRGBO(255, 255, 255, 1);
  Color _tittle = Color.fromRGBO(94, 95, 93, 1);
  //TextStyles
  TextStyle tittleTextStyle = GoogleFonts.montserrat(
      textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(94, 95, 93, 1)));
  TextStyle textTextStyle = GoogleFonts.montserrat(
      textStyle: const TextStyle(
          fontSize: 13,
          //fontWeight: FontWeight.bold,
          color: Color.fromRGBO(94, 95, 93, 1)));
  TextStyle subtittleTextStyle = GoogleFonts.montserrat(
      textStyle: const TextStyle(
          fontSize: 12,
          //fontWeight: FontWeight.bold,
          color: Color.fromRGBO(94, 95, 93, 1)));

  @override
  Widget build(BuildContext context) {
    return _information();
  }

  Widget _information() {
    return Scaffold(
      backgroundColor: _gray,
      body: Center(
        child: Card(
          elevation: 20,
          color: Colors.white,
          child: Container(
            padding: EdgeInsets.all(20),
            width: 400,
            height: 450,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(tittleText, style: tittleTextStyle),
                Text(subtittleText, style: subtittleTextStyle),
                const SizedBox(height: 30),
                Text(
                  resumenText,
                  style: textTextStyle,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),
                _contactData()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _contactData() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Teléfono: (55) 5385-0906', style: textTextStyle),
            Text('Ext: 45438 y 45082', style: textTextStyle),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Versión CICLOP: 3.0.0', style: textTextStyle),
            Text('Versión Dispositivo: ---', style: textTextStyle),
          ],
        )
      ],
    );
  }
}
