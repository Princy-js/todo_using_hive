import 'package:flutter/material.dart';
import 'package:todo_using_hive/components/todo_Button.dart';


class DialogBox extends StatelessWidget {
  final taskcontroller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.taskcontroller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero
      ),
      backgroundColor: Colors.deepPurple[300],
      content: Container(
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: taskcontroller,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: Colors.purple[100]),
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(width: 8),

                // cancel button
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}