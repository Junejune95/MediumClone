import 'package:flutter/material.dart';
import 'package:mediumClone/ui/styles/app-style.dart';
import './pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  List<Widget> pages = [
    MainPage(),
    AudioPage(),
    ReadingListPage(),
    InterestsPage(),
    NewStoryPage(),
    StatesPage(),
    StoriesPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
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
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://swebtoon-phinf.pstatic.net/20180815_224/1534306357570vPBNs_JPEG/04_EC9E91ED9288EC8381EC84B8_mobile.jpg?type=crop540_540"),
              ),
              accountName: Text(
                "Zon Zon",
                style: normalFont,
              ),
              accountEmail: Text(
                "View profile",
                style: normalFont54,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            SideBarList(
              label: "Home",
              index: 0,
              onTap: () {
                print("reach");
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => MainPage(),
                ));
              },
            ),
            SideBarList(
              label: "Audio",
              index: 1,
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => ReadingListPage(),
                ));
              },
            ),
            SideBarList(
              label: "Reading list",
              index: 2,
              onTap: () {
                setState(() {
                  _index = 2;
                });
              },
            ),
            SideBarList(
              label: "Interests",
              index: 3,
              onTap: () {
                setState(() {
                  _index = 3;
                });
              },
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              title: Text(
                "Become a member",
                style: normalFont.copyWith(color: Colors.green),
              ),
              onTap: () {},
            ),
            Divider(
              color: Colors.grey,
            ),
            SideBarList(
              label: "New Story",
              index: 4,
              onTap: () {
                setState(() {
                  _index = 4;
                });
              },
            ),
            SideBarList(
              label: "Stats",
              index: 5,
              onTap: () {
                setState(() {
                  _index = 5;
                });
              },
            ),
            SideBarList(
              label: "Stories",
              index: 6,
              onTap: () {
                setState(() {
                  _index = 6;
                });
              },
            ),
            Container(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Row(
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Medium_logo_Monogram.svg/1200px-Medium_logo_Monogram.svg.png",
                        width: 45,
                        height: 45,
                        fit: BoxFit.cover,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Settings",
                        style: normalFont,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Helps",
                        style: normalFont,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SideBarList extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final int index;
  const SideBarList({Key key, this.label,this.index, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: normalFont,
      ),
      onTap: () {
        print('Reach '+this.index.toString());
       if(this.index ==1){
                        Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => ReadingListPage(),
                ));
       }
      },
    );
  }
}
