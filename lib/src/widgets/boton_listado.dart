import 'package:flutter/material.dart';

class BotonListado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _Background(),
    );
  }
}

class _Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.red,
          boxShadow: [
            BoxShadow(
                color: Colors.black54.withOpacity(0.2),
                offset: Offset(4, 6),
                blurRadius: 10)
          ],
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              colors: <Color>[Color(0xff6989f5), Color(0xff906ef5)])),
    );
  }
}
