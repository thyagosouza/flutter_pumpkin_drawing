import 'package:flutter/material.dart';

class OldPumpkinDrawing extends StatelessWidget {
  const OldPumpkinDrawing({super.key});

  @override
  Widget build(BuildContext context) {
    Color white = Colors.white;
    Color orange = Colors.orange;
    Color redDark = Color(0xFF851F18);
    Color red = Colors.red;
    Color green = Color(0xFF2B7A2D);
    Color black = Colors.black;
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            // Talo verde
            clipOval(sizeH: 90, sizeW: 30, color: green, top: 220, left: 200),
            clipOval(sizeH: 90, sizeW: 25, color: black, top: 230, left: 207),
            // Gomos da direita
            gomoOrange(sizeH: 140, sizeW: 105, color: white, right: 235),
            gomoOrange(sizeH: 172, sizeW: 96, color: white, right: 210),
            gomoOrange(sizeH: 162, sizeW: 100, color: orange, right: 208),
            // Gomos da esquerda
            gomoOrange(sizeH: 140, sizeW: 105, color: white, left: 235),
            gomoOrange(sizeH: 172, sizeW: 96, color: white, left: 210),
            gomoOrange(sizeH: 162, sizeW: 100, color: orange, left: 208),
            // Centro
            gomoOrange(sizeH: 192, sizeW: 96, color: white),
            gomoOrange(sizeH: 180, sizeW: 103, color: orange, top: 275),
            // Boca
            clipOval(sizeH: 90, sizeW: 90, color: red, top: 328),
            clipOval(sizeH: 80, sizeW: 90, color: orange),
            // Olhos
            clipOval(
                sizeH: 30,
                sizeW: 30,
                color: redDark,
                innerColor: red,
                top: 328,
                left: 160,
                innerPosLeft: 5),
            clipOval(
                sizeH: 30,
                sizeW: 30,
                color: redDark,
                innerColor: red,
                top: 328,
                right: 160,
                innerPosRight: 5),
          ],
        ),
      ),
    );
  }
}

Widget clipOval({
  required double sizeH,
  required double sizeW,
  required Color color,
  double? innerPosRight,
  double? innerPosLeft,
  Color? innerColor,
  double? top,
  double? right,
  double? left,
}) {
  return Positioned(
      top: top,
      right: right,
      left: left,
      child: ClipOval(
        child: Container(
          height: sizeH,
          width: sizeW,
          color: color,
          child: Stack(
            children: [
              Positioned(
                top: -3,
                right: innerPosRight,
                left: innerPosLeft,
                child: ClipOval(
                  child: Container(width: 30, height: 30, color: innerColor),
                ),
              ),
            ],
          ),
        ),
      ));
}

Widget gomoOrange(
    {required double sizeH,
    required double sizeW,
    required Color color,
    double? left,
    double? right,
    double? top}) {
  return Positioned(
    top: top,
    right: right,
    left: left,
    child: Container(
      height: sizeH,
      width: sizeW,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          width: 3,
          color: color, //                   <--- border width here
        ),
      ),
    ),
  );
}
