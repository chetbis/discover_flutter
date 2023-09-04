import 'package:flutter/material.dart';

class PositionMarker extends StatelessWidget {
  const PositionMarker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.yellow,
          width: 2,
        ),
        color: Colors.yellow.withOpacity(.5),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Container(
        margin: const EdgeInsets.all(15),
        height: 5,
        width: 5,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
          color: Colors.amber,
        ),
      ),
    );
  }
}
