import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => ContadorPageState();
}

class ContadorPageState extends State<ContadorPage> {
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
      ),
      body: Center(child: _createBody(_contador)),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createBody(int cont) {
    TextStyle textStyle = new TextStyle(fontSize: 25);
    Column column = new Column(
      children: <Widget>[
        Text('Numero de Taps', style: textStyle),
        Text('$cont', style: textStyle),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );

    return column;
  }

  Widget _createButtons() {
    Row row = new Row(
      children: <Widget>[
        SizedBox(width: 30),
        _createButton(_reset, Icons.exposure_zero),
        Expanded(child: SizedBox()),
        _createButton(_less, Icons.remove),
        SizedBox(width: 5),
        _createButton(_sum, Icons.add),
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );

    return row;
  }

  FloatingActionButton _createButton(Function function, IconData icon) {
    return FloatingActionButton(
      onPressed: function,
      child: Icon(icon),
    );
  }

  void _sum() {
    setState(() {
      _contador++;
    });
  }

  void _less() {
    setState(() {
      _contador--;
    });
  }

  void _reset() {
    setState(() {
      _contador = 0;
    });
  }
}
