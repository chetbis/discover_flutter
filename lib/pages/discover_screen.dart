import 'package:discover_app/components/animal_list.dart';
import 'package:discover_app/models/animal_model.dart';
import 'package:discover_app/pages/details_screen.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> _tabs = ['All', 'Birds', 'Fishes', 'Mammals'];

  @override
  void initState() {
    _tabController = TabController(
      length: _tabs.length,
      vsync: this,
    );
    super.initState();
  }

  void _onAnimalTapped(Animal animal) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(entity: animal),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            top: 10,
            left: 20,
            right: 20,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff524a41),
                Color(0xffaa928e),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  Icon(
                    Icons.search,
                    size: 30,
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Discover',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                'Protect our Earth together.',
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TabBar(
                isScrollable: true,
                labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.amber,
                ),
                controller: _tabController,
                tabs: _tabs.map((e) => Tab(text: e)).toList(),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    AnimalList(
                      onTap: _onAnimalTapped,
                      list: [...birdData, ...mammalData, ...fishData],
                    ),
                    AnimalList(
                      onTap: _onAnimalTapped,
                      list: birdData,
                    ),
                    AnimalList(
                      onTap: _onAnimalTapped,
                      list: fishData,
                    ),
                    AnimalList(
                      onTap: _onAnimalTapped,
                      list: mammalData,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
