import 'package:flutter/material.dart';

class WeightContainerWidget extends StatefulWidget {
  const WeightContainerWidget({super.key});

  @override
  State<WeightContainerWidget> createState() => _WeightContainerWidgetState();
}

class _WeightContainerWidgetState extends State<WeightContainerWidget> {
  int weight = 65;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(50)),
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
    );
  }
}
