import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
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
            padding: EdgeInsets.only(right: 50),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 12, top: 12, bottom: 12, right: 12),
            child: Container(
                // alignment: Alignment.center,
                width: 150,
                height: 150,
                color: Colors.black,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.male_outlined,
                      size: 80,
                      color: Colors.white,
                    ),
                    Text(
                      "Male",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 12, right: 12, bottom: 12, left: 12),
            child: Container(
              width: 150,
              height: 150,
              color: Colors.black,
              
            ),
          )
        ],
      ),
    );
  }
}

// List x = <int>[1,2,4,];