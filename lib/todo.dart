import 'package:flutter/material.dart';

class TodaScreen extends StatefulWidget {
  const TodaScreen({super.key});

  @override
  State<TodaScreen> createState() => _TodaScreenState();
}

class _TodaScreenState extends State<TodaScreen> {
  // void checkboxchanged(int index) {
  //   setState(() {
  //     if (value != null) {
  //       onChanged!(value);
  //     }
  //   });
  // }
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool _isChecked = false;

  Widget a() {
    return ListTile(
      title: Text(
        'Buy Groceries',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        'Grocery Shopping',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade300,
        ),
      ),
      leading: Checkbox(
        value: _isChecked,
        onChanged: (value) {
          setState(() {
            _isChecked = value ?? false;
          });
        },
        activeColor: Colors.blue.shade300,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'All',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Completed',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Pending',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          title: Center(
            child: Text(
              'My Tasks',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                showBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      padding: EdgeInsets.all(20),
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Task Title',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Description',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Add Task'),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              icon: Icon(
                Icons.add_circle_outlined,
                color: Colors.blue.shade300,
                size: 30,
              ),
            ),
          ],
          elevation: 10,
          shadowColor: Colors.black54,
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                return Container(padding: EdgeInsets.all(10), child: a());
              },
            ),
            ListView.builder(
              itemBuilder: (context, index) {
                return Container(padding: EdgeInsets.all(10), child: a());
              },
            ),
            ListView.builder(
              itemBuilder: (context, index) {
                return Container(padding: EdgeInsets.all(10), child: a());
              },
            ),
          ],
        ),
      ),
    );
  }
}
