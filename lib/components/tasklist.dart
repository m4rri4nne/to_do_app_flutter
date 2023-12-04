import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/components/list_item.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  void action() {}
  bool checked = false;

  final List<String> items = [
    "Cook Rice and Chicken at 10 am",
    "Learn Flutter",
    "Have Lunch at 12pm",
    "Learn HTML and CSS at 3pm",
    "Have dinner at 8pm"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 45, right: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Text(
                  "Task List",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Poppins-Regular",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
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
                  onPressed: action,
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
      ),
    );
  }
}
