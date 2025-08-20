import 'package:flutter/material.dart';

class Todopack extends StatelessWidget {
  const Todopack({
    super.key,
    required this.taskname,
    this.onChanged,
    required this.taskcompleted,
  });

  final String taskname;
  final bool taskcompleted;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsetsDirectional.all(20),
        decoration: BoxDecoration(
          color: Colors.blue.shade200,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskcompleted,
              onChanged: onChanged,
              checkColor: Colors.white,
              activeColor: Colors.white,
              side: const BorderSide(color: Colors.white),
            ),
            Text(
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                decoration: taskcompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                    decorationColor: Colors.white,
                    decorationThickness: 2,
              ),
              taskname,
            ),
          ],
        ),
      ),
    );
  }
}
