import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text("Height"),
                        Text('177cm'),
                        Slider(
                          value: 0.5,
                          onChanged: (v) {},
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}