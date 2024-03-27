import 'package:flutter/material.dart';

class MaleContainerWidget extends StatefulWidget {
  const MaleContainerWidget({super.key});

  @override
  State<MaleContainerWidget> createState() => _MaleContainerWidgetState();
}

class _MaleContainerWidgetState extends State<MaleContainerWidget> {
  bool isChoosen = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
          vertical: 12,
        ),
        child: GestureDetector(
          onTap: () {
            setState(() {
              isChoosen = !isChoosen;
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
    );
  }
}
