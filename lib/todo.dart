import 'package:flutter/material.dart';
import 'package:flutter_application_8/utils/todopack.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final controller = TextEditingController();

  List todoList = [
    ['Buy Groceries', false],
    ['Attend Team Meeting', false],
  ];
  
  void savenewtask(){
    setState(() {
      todoList.add({controller.text, false});
      controller.clear();
    });
  }

  void changed(int index) {
    todoList[index][1] = !todoList[index][1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Todo List'),
        backgroundColor: Colors.blue.shade300,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Todopack(
            taskname: todoList[index][0],
            taskcompleted: todoList[index][1],
            onChanged: (value) {
              changed(index);
            },
          );
        },
      ),
      floatingActionButton: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue.shade800,
                  hintText: 'Add New Task here',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                ),
              ),
            ),
          ),
          FloatingActionButton(onPressed: savenewtask, child: Icon(Icons.add)),
        ],
      ),
    );
  }
}
