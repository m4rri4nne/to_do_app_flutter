import 'package:flutter/material.dart';

class ListItem extends StatefulWidget {
  const ListItem({super.key, required this.item});

  final String item;
  @override
  State<ListItem> createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          fillColor: MaterialStateProperty.resolveWith((states) {
            if (!states.contains(MaterialState.selected)) {
              return Colors.transparent;
            }
            return Colors.amber.shade600;
          }),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(22.0)),
          ),
          checkColor: Colors.amber.shade600,
          value: checked,
          onChanged: (bool? value) {
            setState(() {
              checked = value!;
            });
          },
        ),
        Text(
          widget.item,
          style: const TextStyle(
            fontFamily: "Poppins-Regular",
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}
