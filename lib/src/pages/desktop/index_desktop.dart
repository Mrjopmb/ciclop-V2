import 'package:ciclop/src/pages/desktop/views/acerca_page.dart';
import 'package:ciclop/src/pages/desktop/views/tpo_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IndexDesktopPage extends StatefulWidget {
  IndexDesktopPage({Key? key}) : super(key: key);

  @override
  State<IndexDesktopPage> createState() => _IndexDesktopPageState();
}

class _IndexDesktopPageState extends State<IndexDesktopPage> {
  //Colors
  Color _rose = Color.fromRGBO(237, 0, 125, 1);
  Color _green = Color.fromRGBO(0, 0, 237, 1);
  Color _gray = Color.fromRGBO(195, 195, 195, 1);
  Color _white = Color.fromRGBO(255, 255, 255, 1);
  Color _tittle = Color.fromRGBO(94, 95, 93, 1);
  //Texts
  String bottomFirstText = 'Sistema de Administración de Lectores Opticos';
  String bottomSecondText =
      'Servicio Postal Mexicano. 2016. Derechos Reservados';
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
    return Scaffold(
      backgroundColor: _gray,
      body: Center(
          child: Column(
        children: [
          Expanded(
            flex: 20,
            child: Container(
              color: _gray,
              child: _tabView(),
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                color: _white,
                child: _bottomPanel(),
              )),
        ],
      )),
    );
  }

  Widget _bottomPanel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 50,
        ),
        Image.asset(
          'assets/logo.png',
          width: 100,
          height: 100,
        ),
        const SizedBox(
          width: 360,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('CICLOP V3.0.0', style: tittleTextStyle),
          ],
        ),
        const SizedBox(
          width: 250,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(bottomFirstText, style: subtittleTextStyle),
            Text(bottomSecondText, style: subtittleTextStyle),
          ],
        ),
        const SizedBox(),
      ],
    );
  }

  Widget _tabView() {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        backgroundColor: _gray,
        appBar: AppBar(
          backgroundColor: _rose,
          title: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Text('Dispositivo')),
              Tab(icon: Text('Administración')),
              Tab(icon: Text('Reportes')),
              Tab(icon: Text('Configuración')),
              Tab(icon: Text('TPO')),
              Tab(icon: Text('Acerca de')),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            TPOPage(),
            AcercaDePage()
          ],
        ),
      ),
    );
  }


}
