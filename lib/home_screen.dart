import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.blue,
        title: const Text("First Lesson"),
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.verified),
          ),
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: const Center(
        child: Icon(
          Icons.lock,
          size: 80,
          color: Colors.grey,
        ),
      ),
    );
  }
}

List<int> x = [1, 2, 3, 4, 5];
