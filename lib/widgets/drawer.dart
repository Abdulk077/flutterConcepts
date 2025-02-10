import 'package:flutter/material.dart';

class MytestDrawer extends StatefulWidget {
  const MytestDrawer({Key? key}) : super(key: key);

  @override
  _MytestDrawerState createState() => _MytestDrawerState();
}

class _MytestDrawerState extends State<MytestDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: Container(
                    color: Colors.blue,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://imgs.search.brave.com/Y0xtclvDqZ7ZHivkXSgjSl_lPT_ACEUeRE4r-RrbIws/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzA4LzIyLzg4LzQ2/LzM2MF9GXzgyMjg4/NDY1N180Q2taNmYy/VmFhbUd3Z2xhWnhG/OWJYWG5vR1A4NVQ5/Ry5qcGc'),
                        ),
                        Column(
                          children: [Text("Abdul"), Text(" 9 jan 2025")],
                        )
                      ],
                    )),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('My App'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
