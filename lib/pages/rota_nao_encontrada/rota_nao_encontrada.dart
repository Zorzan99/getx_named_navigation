import 'package:flutter/material.dart';

class RotaNaoEncontrada extends StatelessWidget {
  const RotaNaoEncontrada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rota não encontrada'),
      ),
      body: Container(),
    );
  }
}
