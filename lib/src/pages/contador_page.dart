import 'package:flutter/material.dart';

class ConteoPage extends StatefulWidget {
  createState() => _ConteoPageState();
}

class _ConteoPageState extends State<ConteoPage> {
  final _textStyle = TextStyle(fontSize: 25);
  int _cont = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Numero de clicks', style: _textStyle),
              Text('$_cont', style: _textStyle),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ),
        floatingActionButton: _createButtons());
  }

  Widget _createButtons() {
    return Row(
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(
            child: Icon(Icons.exposure_zero), onPressed: _zero),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _less),
        SizedBox(width: 5),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _sum)
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }

  void _sum() {
    setState(() => _cont++);
  }

  void _less() {
    setState(() => _cont--);
  }

  void _zero() {
    setState(() => _cont = 0);
  }
}
