import 'package:flutter/material.dart';
import 'package:flutter_app_emergencias/src/widgets/boton_listado.dart';
import 'package:flutter_app_emergencias/src/widgets/headers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmergencyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BotonListado(),
      ),
    );
  }
}


class _PageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconHeader(
      icon: FontAwesomeIcons.plus,
      titulo: 'Asistencia médica',
      subtitulo: 'Solicita',
      color1: Color(0xff526bf6),
      color2: Color(0xff67acf2),
    );
  }
}
