import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EnvioParametros extends StatelessWidget {
  const EnvioParametros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Envio de Paramêtros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/envioParametros/arguments', arguments: {
                  'Enviado por map': 'Teste',
                  'nome': 'Gabriel zorzan',
                });
              },
              child: const Text('Envio parametro arguments'),
            ),
            ElevatedButton(
              onPressed: () {
                final param = Uri.encodeFull('Gabriel Zorzan');
                Get.toNamed('/envioParametros/pathParam/$param/qualquernome');
              },
              child: const Text('Envio path params'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                    '/envioParametros/queryParam?nome=Gabriel Gabriel&id=1&serviço');
              },
              child: const Text('Envio query params'),
            ),
          ],
        ),
      ),
    );
  }
}
