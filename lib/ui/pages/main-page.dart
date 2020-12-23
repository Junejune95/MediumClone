import 'package:flutter/material.dart';
import 'package:mediumClone/ui/styles/app-style.dart';
import 'package:mediumClone/ui/widgets/common-view.dart';
import 'package:mediumClone/ui/widgets/daily-block-widget.dart';
import 'package:mediumClone/ui/widgets/drawer-list-widget.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFE4E4E4),
      appBar: AppBar(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your Daily Read",
                      style: title,
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Column(
                      children: List.generate(
                        5,
                        (index) => DailyBlockWidget(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: List.generate(
                  5,
                  (index) => CommonViewWidget(),
                ),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: DrawerListWidget(),
      ),
    );
  }
}
