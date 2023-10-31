import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final GestureTapCallback onPressed;
  const CustomButton({required this.text, required this.onPressed});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24)))),
        onPressed: widget.onPressed,
        child: Text(
          widget.text,
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }
}
