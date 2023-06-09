import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/inicial/page1');
              },
              child: const Text('Inicial'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/pagina que não existe');
              },
              child: const Text('pagina que não existe'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/envioParametros');
              },
              child: const Text('Envio de Parametros'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/nestedNavigation');
              },
              child: const Text('Nested Navigation'),
            ),
          ],
        ),
      ),
    );
  }
}
