import 'package:flutter/material.dart';
import 'package:to_do_app_flutter/components/task_list_section.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(30),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
            Padding(
              padding: EdgeInsets.only(top: 20, left: 5),
              child: TaskListSection(),
            ),
          ],
        ),
      ),
    );
  }
}
