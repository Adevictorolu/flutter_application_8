import 'package:flutter/material.dart';

void main() {
  runApp(ToDoApp());
}

class ToDoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ToDoHome(),
    );
  }
}

class Task {
  String title;
  bool isCompleted;

  Task({required this.title, this.isCompleted = false});
}

class ToDoHome extends StatefulWidget {
  @override
  _ToDoHomeState createState() => _ToDoHomeState();
}

class _ToDoHomeState extends State<ToDoHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Task> tasks = [];

  final TextEditingController taskController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  void addTask(String title) {
    if (title.isNotEmpty) {
      setState(() {
        tasks.add(Task(title: title));
      });
      taskController.clear();
      Navigator.pop(context);
    }
  }

  void toggleTask(Task task) {
    setState(() {
      task.isCompleted = !task.isCompleted;
    });
  }

  void deleteTask(Task task) {
    setState(() {
      tasks.remove(task);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ToDo List'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Tasks'),
            Tab(text: 'Completed'),
            Tab(text: 'Pending'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          buildTaskList(tasks),
          buildTaskList(tasks.where((t) => t.isCompleted).toList()),
          buildTaskList(tasks.where((t) => !t.isCompleted).toList()),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (_) {
              return Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: taskController,
                      decoration: InputDecoration(
                        labelText: 'New Task',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      onPressed: () => addTask(taskController.text),
                      child: Text('Add Task'),
                    )
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget buildTaskList(List<Task> list) {
    if (list.isEmpty) {
      return Center(child: Text('No tasks yet.'));
    }
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        var task = list[index];
        return ListTile(
          title: Text(
            task.title,
            style: TextStyle(
              decoration:
                  task.isCompleted ? TextDecoration.lineThrough : null,
            ),
          ),
          leading: Checkbox(
            value: task.isCompleted,
            onChanged: (val) => toggleTask(task),
          ),
          trailing: IconButton(
            icon: Icon(Icons.delete, color: Colors.red),
            onPressed: () => deleteTask(task),
          ),
        );
      },
    );
  }
}
