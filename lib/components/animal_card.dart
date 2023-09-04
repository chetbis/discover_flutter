import 'package:discover_app/components/map.dart';
import 'package:discover_app/models/animal_model.dart';
import 'package:flutter/material.dart';

class AnimalCard extends StatelessWidget {
  final Animal entity;
  final void Function()? onTap;

  const AnimalCard({
    super.key,
    this.onTap,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context);
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Stack(
        children: [
          Container(
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
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              height: MediaQuery.of(context).size.width * .5,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Hero(
                  tag: entity.imageUrl,
                  child: Image.asset(entity.imageUrl),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
