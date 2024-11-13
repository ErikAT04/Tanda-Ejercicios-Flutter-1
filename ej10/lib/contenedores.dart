import 'package:flutter/material.dart';

class CasillaLista extends StatelessWidget {
  const CasillaLista({
    super.key,
    required this.producto,
    required this.precio,
    required this.margin,
    required this.padding,
    required this.urlImg,
    required this.boxColor,
    required this.shadowColor,
    required this.offsetX,
    required this.offsetY,
    required this.blurRadius,
  });

  final String producto;
  final String precio;
  final double margin;
  final double padding;
  final String urlImg;
  final Color boxColor;
  final Color shadowColor;
  final double offsetX;
  final double offsetY;
  final double blurRadius;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 500,
        height: 800,
        margin: EdgeInsets.all(margin),
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: Offset(offsetX, offsetY),
              color: shadowColor,
              blurRadius: blurRadius)
        ], color: boxColor),
        child: Row(
          children: [
            Image(
              image: NetworkImage(urlImg),
              width: 100,
              height: 100,
            ),
            Text(producto), 
            Text(precio)
          ],
        ),
      ),
    );
  }
}
