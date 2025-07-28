import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TodaScreen extends StatefulWidget {
  const TodaScreen({super.key});

  @override
  State<TodaScreen> createState() => _TodaScreenState();
}

class _TodaScreenState extends State<TodaScreen> {
  List a = [
    ListTile(
      title: Text(
        'Buy Groceries',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
      subtitle: Text(
        'Grocery Shopping',
        style: TextStyle(
          color: Colors.grey.shade300,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
              onPressed: () {},
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
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text(
                      'Buy Groceries',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'Grocery Shopping',
                      style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView(
                children: [
                  ListTile(
                    title: Text(
                      'Buy Groceries',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'Grocery Shopping',
                      style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              ListView(
                children: [
                  ListTile(
                    title: Text(
                      'Buy Groceries',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: Text(
                      'Grocery Shopping',
                      style: TextStyle(
                        color: Colors.grey.shade300,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
