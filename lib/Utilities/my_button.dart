import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed1;

  const MyButton({super.key, required this.text, required this.onPressed1});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed1,
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}
