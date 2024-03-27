import 'package:flutter/material.dart';

class FemaleContainerWidget extends StatelessWidget {
  const FemaleContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Expanded(
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
              );
  }
}