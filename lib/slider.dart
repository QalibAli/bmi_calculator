import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              activeColor: Colors.red,
              inactiveColor: Colors.black,
              value: 0.6,
              onChanged: (value) {
                // currentValue = value;
                // print(currentValue);
                // setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}




// void getData( int number){

// }

