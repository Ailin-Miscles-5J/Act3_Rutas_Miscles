import 'package:flutter/material.dart';

import 'package:miscles/pagina_cinco.dart';
import 'package:miscles/pagina_cuatro.dart';
import 'package:miscles/pagina_seis.dart';
import 'package:miscles/pagina_siete.dart';
import 'package:miscles/pagina_uno.dart';
import 'package:miscles/pagina_dos.dart';
import 'package:miscles/pagina_tres.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre paginas Routes",
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => PantallaSiete(),
      },
    );
  }
}
