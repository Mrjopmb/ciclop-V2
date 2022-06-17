import 'package:flutter/material.dart';

class TPOPage extends StatefulWidget {
  TPOPage({Key? key}) : super(key: key);

  @override
  State<TPOPage> createState() => _TPOPageState();
}

class _TPOPageState extends State<TPOPage> {
    //Colors
  Color _rose = Color.fromRGBO(237, 0, 125, 1);
  Color _green = Color.fromRGBO(0, 0, 237, 1);
  Color _gray = Color.fromRGBO(195, 195, 195, 1);
  Color _white = Color.fromRGBO(255, 255, 255, 1);
  Color _tittle = Color.fromRGBO(94, 95, 93, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _gray,
      body: _connected()
    );
  }

  Widget _disconnected() {
    return Center(
      child: Text('Disconnected'),
    );
  }

  Widget _connected() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [_cardTemplate(), _cardTemplate(), _cardTemplate()],
    );
  }

  Widget _cardTemplate() {
    return SizedBox(
      width: 400,
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('Card'),
            Text('Card'),
            Text('Card'),
          ],
        ),
      ),
    );
  }
}
