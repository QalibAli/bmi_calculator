import 'package:first_lesson/female_container_widget.dart';
import 'package:first_lesson/male_container.dart';
import 'package:first_lesson/slider_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isChoosen = false;
  int weight = 65;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaleContainerWidget(),
              FemaleContainerWidget(),
            ],
          ),
          const SliderWidget(),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const  EdgeInsets.symmetric(vertical: 20),
                  margin: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    color: Colors.amber,
                  ),
                  child: Column(
                    children: [
                       Text(
                        "$weight",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            child: ColoredBox(
                              color: Colors.grey,
                              child: IconButton(
                                // splashRadius: 100,  usematerial
                                color: Colors.white,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: const Icon(Icons.add),
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            child: ColoredBox(
                              color: Colors.grey,
                              child: IconButton(
                                // splashRadius: 100,
                                color: Colors.white,
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: const Icon(Icons.remove),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(12),
                  height: 100,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
  
        ],
      ),
    );
  }
}
