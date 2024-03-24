import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpandedScreen extends StatefulWidget {
  const ExpandedScreen({super.key});

  @override
  State<ExpandedScreen> createState() => _ExpandedScreenState();
}

class _ExpandedScreenState extends State<ExpandedScreen> {
  bool isChoosen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 12,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isChoosen =! isChoosen;
                      });
                      print(isChoosen);
                    },
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      child: ColoredBox(
                        color: isChoosen == true ? Colors.green : Colors.amber,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male_outlined,
                                size: 30,
                              ),
                              Text("Male"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Expanded(
                flex: 1, //1k
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: ColoredBox(
                      color: Colors.amber,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male_outlined,
                              size: 30,
                            ),
                            Text("Male"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
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
          ),
        ],
      ),
    );
  }
}
