import 'package:flutter/material.dart';
import 'package:flutter_test1/util/button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
          height: 120,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const TextField(
                  decoration: InputDecoration(
                      hintText: 'Add a new task',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // cancel
                    MyButton(text: 'Cancel', onPressed: () {}),

                    // delimiter
                    const SizedBox(width: 8),

                    // save
                    MyButton(text: 'Save', onPressed: () {}),
                  ],
                )
              ])),
    );
  }
}
