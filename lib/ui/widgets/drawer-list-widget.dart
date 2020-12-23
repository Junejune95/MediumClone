import 'package:flutter/material.dart';
import 'package:mediumClone/ui/styles/app-style.dart';
import '../pages/pages.dart';

List<Widget> pages = [
  MainPage(),
  AudioPage(),
  ReadingListPage(),
  InterestsPage(),
  NewStoryPage(),
  StatesPage(),
  StoriesPage(),
];
int _index = 0;


class DrawerListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
              onTap: () {},
            ),
            SideBarList(
              label: "Audio",
              index: 1,
              onTap: () {},
            ),
            SideBarList(
              label: "Reading list",
              index: 2,
              onTap: () {},
            ),
            SideBarList(
              label: "Interests",
              index: 3,
              onTap: () {},
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
              onTap: () {},
            ),
            SideBarList(
              label: "Stats",
              index: 5,
              onTap: () {},
            ),
            SideBarList(
              label: "Stories",
              index: 6,
              onTap: () {},
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
        );
  }
}

class SideBarList extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  final int index;
  const SideBarList({Key key, this.label, this.index, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        label,
        style: normalFont,
      ),
      onTap: () {
        // _index=this.index;
        Navigator.of(context).pop();
        Navigator.of(context).push(new MaterialPageRoute(
          builder: (BuildContext context) => pages[this.index],
        ));
      },
    );
  }
}