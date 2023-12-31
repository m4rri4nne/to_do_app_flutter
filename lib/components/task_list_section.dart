import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/components/list_item.dart';

class TaskListSection extends StatefulWidget {
  const TaskListSection({super.key});
  @override
  State<TaskListSection> createState() => _TaskListSectionState();
}

class _TaskListSectionState extends State<TaskListSection> {
  final TextEditingController _textController = TextEditingController();

  final List<String> items = [
    "Cook Rice and Chicken at 10 am",
    "Learn Flutter",
    "Have Lunch at 12pm",
    "Learn HTML and CSS at 3pm",
    "Have dinner at 8pm"
  ];
  void action() {
    setState(() {
      items.add(_textController.text);
    });
    Navigator.of(context).pop();
  }

  // Modal
  void addTaskModal() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: TextField(
              decoration: const InputDecoration(
                hintText: "New Task",
                hintStyle: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                ),
                filled: false,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
              controller: _textController,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            backgroundColor: Colors.white,
            actions: [
              TextButton(
                onPressed: action,
                child: const Text("Add new task"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Cor da sombra
            spreadRadius: 5, // Espalhamento da sombra
            blurRadius: 5, // Desfoque da sombra
            offset: const Offset(0, 3), // Deslocamento da sombra (x, y)
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tasks List',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Poppins-Regular",
                  color: Colors.grey.shade900,
                ),
              ),
              TextButton(
                onPressed: addTaskModal,
                child: const Icon(
                  Icons.add_circle_outline,
                  color: Colors.amber,
                  size: 30,
                ),
              ),
            ],
          ),
          Column(
            children: [
              for (int i = 0; i < items.length; i++) ListItem(item: items[i])
            ],
          ),
        ],
      ),
    );
  }
}
