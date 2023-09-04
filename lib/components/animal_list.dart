import 'package:discover_app/components/animal_card.dart';
import 'package:discover_app/models/animal_model.dart';
import 'package:flutter/material.dart';

class AnimalList extends StatelessWidget {
  final List<Animal> list;

  const AnimalList({
    super.key,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      itemCount: list.length,
      itemBuilder: (context, index) {
        return AnimalCard(entity: list[index]);
      },
    );
  }
}
