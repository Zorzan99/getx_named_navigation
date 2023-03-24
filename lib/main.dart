import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getrotasnomeadas/pages/envio_parametros/arguments_param_page.dart';
import 'package:getrotasnomeadas/pages/envio_parametros/envio_parametros.dart';
import 'package:getrotasnomeadas/pages/envio_parametros/path_param_page.dart';
import 'package:getrotasnomeadas/pages/envio_parametros/query_param_page.dart';
import 'package:getrotasnomeadas/pages/home_page.dart';
import 'package:getrotasnomeadas/pages/inicial/page1.dart';
import 'package:getrotasnomeadas/pages/rota_nao_encontrada/rota_nao_encontrada.dart';

import 'nested_navigation/home_nested_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      unknownRoute: GetPage(
        name: '/404',
        page: () => const RotaNaoEncontrada(),
      ),
      initialRoute: '/home',
      routingCallback: (Routing? rountig) {
        debugPrint(rountig?.previous);
        debugPrint(rountig?.current);
      },
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/inicial/page1',
          page: () => const Page1(),
        ),
        GetPage(
          name: '/envioParametros',
          page: () => const EnvioParametros(),
          children: [
            GetPage(
              name: '/arguments',
              page: () => const ArgumentsParamPage(),
            ),
            GetPage(
              name: '/pathParam/:nome/qualquernome',
              page: () => const PathParamPage(),
            ),
            GetPage(
              name: '/queryParam',
              page: () => const QueryParamPage(),
            ),
          ],
        ),
        GetPage(
          name: '/nestedNavigation',
          page: () => HomeNestedNavigation(),
        ),
      ],
    );
  }
}
