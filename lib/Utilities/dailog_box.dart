import 'package:flutter/material.dart';
import 'package:todoapp/Utilities/my_button.dart';

class DialogBox extends StatelessWidget {
  final controllerr;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controllerr,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[100],
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //Get user input
          TextField(
            controller: controllerr,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "أضف مهمة جديدة",
            ),
          ),
          //buttons -> save + cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // save button
              MyButton(text: "حفظ", onPressed1: onSave),

              const SizedBox(width: 8),
              // cancel button
              MyButton(text: "الغاء", onPressed1: onCancel)
            ],
          ),
        ]),
      ),
    );
  }
}
