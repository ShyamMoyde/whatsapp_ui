import 'package:flutter/material.dart';


class Homescreen extends StatefulWidget {
  static const String id = 'HomeScreen';
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
          ),
          bottom: const TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white54,
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Call'),
                ),
              ]),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                iconColor: Colors.white,
                itemBuilder: (
                  context,
                ) =>
                    [
                      const PopupMenuItem(
                        value: 1,
                        child: Text('New Group'),
                      ),
                      const PopupMenuItem(
                        value: 1,
                        child: Text('Setting'),
                      ),
                      const PopupMenuItem(
                        value: 1,
                        child: Text('Logout'),
                      ),
                    ]),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(children: [
          Text('Camera'),
          ListView.builder(itemCount: 100,
              itemBuilder:
              (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/1778922/pexels-photo-1778922.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
              title: Text('Robert Downey Jr'),
              subtitle: Text('where is my robot'),
              trailing: Text('01:16PM'),
            );
          }),
          ListView.builder(itemCount: 100,
              itemBuilder:
                  (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/13098107/pexels-photo-13098107.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text('Robert'),
                  subtitle: Text(index/2==0?'Today':'01:32PM'),

                );
              }),
          ListView.builder(itemCount: 100,
              itemBuilder:
                  (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/210143/pexels-photo-210143.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                  ),
                  title: Text('Robert Downey Jr'),
                  subtitle: Text(index /2 == 0? 'You have Misscall': 'Today,4:54PM'),
                  trailing: Icon(index/2==0? Icons.phone:Icons.video_call),
                );
              }),
        ]),
      ),
    );
  }
}
