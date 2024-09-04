import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('My Whatsapp'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.chat), text: 'Chats'),
                Tab(icon: Icon(Icons.people), text: 'Contacts'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // Chats Tab
              ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.person),
                    ),
                    title: Text('John Doe'),
                    subtitle: Text('Hello there'),
                    trailing: Text('10:30 AM'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Icon(Icons.person),
                    ),
                    title: Text('Jane Smith'),
                    subtitle: Text('How are you?'),
                    trailing: Text('Yesterday'),
                  ),
                ],
              ),
              // Contacts Tab
              ListView(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Icon(Icons.person),
                    ),
                    title: Text('Alice Johnson'),
                    subtitle: Text('Hey!'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.purple,
                      child: Icon(Icons.person),
                    ),
                    title: Text('Bob Brown'),
                    subtitle: Text('Whats up?'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    ////
  }
}
