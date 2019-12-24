import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
            child: Icon(Icons.exposure_zero), onPressed: () {}),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: () {}),
        SizedBox(width: 5),
        FloatingActionButton(child: Icon(Icons.add), onPressed: () {})
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }
}
