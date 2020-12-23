import 'package:flutter/material.dart';
import 'package:mediumClone/ui/widgets/drawer-list-widget.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: pages[0],
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () {},
        // ),
        backgroundColor: Colors.black87,
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.white38,
              size: 26,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.search_sharp,
              color: Colors.white38,
              size: 28,
            ),
            onPressed: () {},
          ),
        ],
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: DrawerListWidget()
      ),
    );
  }
}


