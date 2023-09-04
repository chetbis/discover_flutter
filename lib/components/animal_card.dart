import 'package:discover_app/components/map.dart';
import 'package:discover_app/models/animal_model.dart';
import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  final Animal entity;

  const AnimalCard({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context);
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 15,
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      width: double.infinity,
      height: query.size.width * 0.55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white24,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: const Offset(5, 5),
            color: Colors.black.withOpacity(.1),
          ),
        ],
      ),
      child: Row(
        children: [
          MapArea(entity: entity),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: const Icon(
                    Icons.chevron_right,
                    size: 40,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}