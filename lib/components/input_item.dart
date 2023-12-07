import 'package:flutter/material.dart';

class InputItem extends StatefulWidget {
  const InputItem({Key? key, required this.hintText}) : super(key: key);

  final String hintText;

  @override
  State<InputItem> createState() => _InputItemState();
}

class _InputItemState extends State<InputItem> {
  final TextEditingController _inputedText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          borderSide: BorderSide.none,
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 13,
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      ),
      controller: _inputedText,
    );
  }
}
