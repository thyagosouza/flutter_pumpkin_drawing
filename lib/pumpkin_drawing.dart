import 'package:flutter/material.dart';

class PumpkinDrawing extends StatelessWidget {
  const PumpkinDrawing({super.key});

  @override
  Widget build(BuildContext context) {
    Color white = Colors.white;
    Color orange = Colors.orange;
    Color redDark = Color(0xFF851F18);
    Color red = Colors.red;
    Color green = Color(0xFF2B7A2D);
    Color black = Colors.black;
    return Center(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            // Green Stalk ==============================
            base(
                topPosition: 230,
                leftPosition: 200,
                sizeH: 90,
                sizeW: 27,
                color: green,
                isBorderSize: false),
            base(
                topPosition: 240,
                leftPosition: 207,
                sizeH: 70,
                sizeW: 20,
                color: black,
                isBorderSize: false),
            // Right Side ==============================
            base(
                topPosition: 290,
                rightPosition: 235,
                sizeH: 140,
                sizeW: 105,
                borderColor: white,
                isBorderSize: true),
            base(
                topPosition: 280,
                rightPosition: 210,
                sizeH: 172,
                sizeW: 96,
                borderColor: white,
                isBorderSize: true),
            base(
                topPosition: 283,
                rightPosition: 208,
                sizeH: 162,
                sizeW: 99,
                borderColor: orange,
                isBorderSize: true),
            // Left Side ==============================
            base(
                topPosition: 290,
                leftPosition: 235,
                sizeH: 140,
                sizeW: 105,
                borderColor: white,
                isBorderSize: true),
            base(
                topPosition: 280,
                leftPosition: 210,
                sizeH: 172,
                sizeW: 96,
                borderColor: white,
                isBorderSize: true),
            base(
                topPosition: 283,
                leftPosition: 208,
                sizeH: 162,
                sizeW: 99,
                borderColor: orange,
                isBorderSize: true),

            // Center ==============================
            base(
              topPosition: 275,
              sizeH: 192,
              sizeW: 96,
              borderColor: white,
              isBorderSize: true,
            ),
            base(
              topPosition: 280,
              sizeH: 180,
              sizeW: 103,
              borderColor: orange,
              isBorderSize: true,
            ),

            // Mouth ==============================
            base(
              topPosition: 328,
              sizeH: 90,
              sizeW: 90,
              color: red,
              borderColor: red,
              isBorderSize: true,
            ),
            base(
              topPosition: 318,
              sizeH: 90,
              sizeW: 95,
              borderColor: orange,
              isBorderSize: true,
            ),

            // Eyes ==============================
            base(
              topPosition: 328,
              leftPosition: 160,
              sizeH: 30,
              sizeW: 30,
              innerSizeH: 25,
              innerSizeW: 25,
              color: redDark,
              innerColor: red,
              innerTopPosition: 1,
              innerLeftPosition: 5,
              isBorderSize: false,
            ),
            base(
              topPosition: 328,
              rightPosition: 160,
              sizeH: 30,
              sizeW: 30,
              innerSizeH: 25,
              innerSizeW: 25,
              color: redDark,
              innerColor: red,
              innerTopPosition: 1,
              innerRightPosition: 5,
              isBorderSize: false,
            ),
          ],
        ),
      ),
    );
  }
}

Widget base({
  required double sizeH,
  required double sizeW,
  Color? borderColor = Colors.transparent,
  Color color = Colors.orange,
  bool isBorderSize = false,
  double radiusTopLeft = 50,
  double radiusTopRight = 50,
  double radiusBottomLeft = 50,
  double radiusBottomRight = 50,
  double borderS = 3,
  double? leftPosition,
  double? rightPosition,
  double? topPosition,
  double? innerLeftPosition,
  double? innerRightPosition,
  double? innerTopPosition,
  double? innerSizeH,
  double? innerSizeW,
  Color? innerColor,
}) {
  return Positioned(
    top: topPosition,
    right: rightPosition,
    left: leftPosition,
    child: Column(
      children: [
        Container(
          height: sizeH,
          width: sizeW,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radiusTopLeft),
              topRight: Radius.circular(radiusTopRight),
              bottomLeft: Radius.circular(radiusBottomLeft),
              bottomRight: Radius.circular(radiusBottomRight),
            ),
            border: Border.all(
                width: isBorderSize ? borderS : 0,
                color: borderColor! //                   <--- border width here
                ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: innerTopPosition,
                right: innerRightPosition,
                left: innerLeftPosition,
                child: ClipOval(
                  child: Container(
                      width: innerSizeW, height: innerSizeH, color: innerColor),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
