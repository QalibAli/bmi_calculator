import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 100,
              height: 100,
              child: ColoredBox(
                color: Colors.amber,
                child: Icon(
                  Icons.abc,
                  size: 100,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.all(0),
              
              decoration:  BoxDecoration(
                color: Colors.red,
                // borderRadius: BorderRadius.only(topLeft: Radius.circular(50) , bottomRight: Radius.circular(50))
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                // border: Border(
                //   top: BorderSide(color: Colors.black , width: 12),
                //   bottom: BorderSide(color: Colors.black , width: 12),
                // )
                border: Border.all( color: Colors.black , width: 12)
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}

// Container - SizedBox - coloredBox
// padding margin
