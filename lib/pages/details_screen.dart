import 'package:discover_app/models/animal_model.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final Animal entity;

  const DetailsScreen({
    super.key,
    required this.entity,
  });

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff524a41),
              Color(0xffaa928e),
            ],
          ),
        ),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 20,
                    left: 25,
                    right: 25,
                    bottom: MediaQuery.of(context).padding.bottom + 20,
                  ),
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: const Column(
                    children: [
                      Spacer(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 20,
                    bottom: MediaQuery.of(context).padding.bottom + 20,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF3a352f),
                        Color(0xFF776d6d),
                      ],
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 5,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          backgroundColor: Colors.amber,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_back,
                          size: 35,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              right: -MediaQuery.of(context).size.width * .14,
              child: Container(
                margin: EdgeInsets.fromLTRB(
                  5,
                  MediaQuery.of(context).padding.top +
                      MediaQuery.of(context).size.height * .05,
                  5,
                  MediaQuery.of(context).padding.bottom,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.5,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Hero(
                    tag: widget.entity.imageUrl,
                    child: Image.asset(
                      widget.entity.imageUrl,
                    )
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 20,
                left: 25,
                right: 25,
                bottom: MediaQuery.of(context).padding.bottom + 20,
              ),
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                children: [
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.entity.name,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        widget.entity.description,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              vertical: 20,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xffb7a6a3),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Donate',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
