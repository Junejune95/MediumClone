import 'package:flutter/material.dart';
import 'package:mediumClone/ui/pages/home/newForyou.dart';
import 'package:mediumClone/ui/pages/home/reading-list.dart';
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
                    Divider(
                      color: Colors.grey,
                    ),
                    _DailyFooter()
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
                children: [
                  Column(
                    children: List.generate(
                      5,
                      (index) => CommonViewWidget(
                        subTitle: "POPULAR ON MEDIUM",
                        title: "4 Useful Css Cunctions That You Should Know",
                        img:
                            "https://miro.medium.com/fit/c/200/200/0*lqZUepkTlmgLP6B5",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            NewForYouWidgets(),
            Container(
              color: Colors.white,
              child: Column(
                children: List.generate(
                  5,
                  (index) => CommonViewWidget(
                    subTitle: "BASED ON YOUR READING HISTORY",
                    title:
                        "29 of My Favorite Design Tools & Websites You’ve Never Heard of",
                    img:
                        "https://miro.medium.com/fit/c/400/266/1*O634OiiT5jE5MJezGLDZlw.png",
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: List.generate(
                  5,
                  (index) => CommonViewWidget(
                    subTitle: "BASED ON YOUR READING HISTORY",
                    title:
                        "29 of My Favorite Design Tools & Websites You’ve Never Heard of",
                    img:
                        "https://miro.medium.com/fit/c/400/266/1*O634OiiT5jE5MJezGLDZlw.png",
                  ),
                ),
              ),
            ),
            ReadingListWidget()
          ],
        ),
      ),
      drawer: Drawer(
        child: DrawerListWidget(),
      ),
    );
  }
}

class _DailyFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {},
          child: Text(
            "Tune your \n recommendations",
            style: btnGreen,
          ),
        ),
        FlatButton(
          onPressed: () {},
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.black87,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Text(
                "Done for Today",
                style: btnNormal,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(
                  Icons.check_circle_outline,
                  color: Colors.black54,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
