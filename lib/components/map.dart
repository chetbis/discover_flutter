import 'package:discover_app/components/position_marker.dart';
import 'package:discover_app/models/animal_model.dart';
import 'package:flutter/material.dart';

class MapArea extends StatelessWidget {
  final Animal entity;

  const MapArea({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: entity.bgColor,
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(.2),
              BlendMode.dstATop,
            ),
            image: const AssetImage('assets/images/worldMap.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            const Positioned(
              top: 100,
              left: 50,
              child: PositionMarker(),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.white54,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    entity.location,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
