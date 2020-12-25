import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconHeader extends StatelessWidget {
  final IconData icon;
  final String titulo;
  final String subtitulo;
  final Color color1;
  final Color color2;

  IconHeader(
      {@required this.icon, @required this.titulo, @required this.subtitulo, this.color1 = const Color(0xff526bf6), this.color2 = const Color(0xff67acf2)});

  @override
  Widget build(BuildContext context) {
    final Color colorBlanco = Colors.white.withOpacity(0.7);

    return Stack(children: [
      _IconHeaderBackground(this.color1, this.color2),
      Positioned(
          top: -50,
          left: -70,
          child: FaIcon(
            this.icon,
            size: 250,
            color: Colors.white.withOpacity(0.2),
          )),
      Column(
        children: [
          SizedBox(
            height: 80,
            width: double.infinity,
          ),
          Text(
            this.subtitulo,
            style: TextStyle(fontSize: 20, color: colorBlanco),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            this.titulo,
            style: TextStyle(
                fontSize: 25, color: colorBlanco, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          FaIcon(
            this.icon,
            size: 80,
            color: Colors.white,
          )
        ],
      )
    ]);
  }
}

class _IconHeaderBackground extends StatelessWidget {

  final Color color1;
  final Color color2;


  _IconHeaderBackground(this.color1, this.color2);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300.0,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0)),
          gradient: LinearGradient(colors: <Color>[
            this.color1,
            this.color2,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    );
  }
}
