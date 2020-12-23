import 'package:flutter/material.dart';
import 'package:mediumClone/ui/styles/app-style.dart';
import 'package:mediumClone/ui/widgets/titleImgRow-widget.dart';

class NewForYouWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFD7EFEF),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New For You",
                  style: title,
                ),
                Row(
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Customize",
                        style: TextStyle(
                          color: Colors.green[500],
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Seel All",
                        style: TextStyle(
                          color: Colors.green[500],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://miro.medium.com/max/3150/1*sHhtYhaCe2Uc3IU0IgKwIQ.png'),
                      fit: BoxFit.fill),
                ),
              ),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Medium Staff",
                          style: subTitle,
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios_outlined),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    TitleImgRowWidget(
                      title: "Create Elastic Input Using Angular Directive",
                      img:
                          "https://miro.medium.com/fit/c/200/200/1*nbOvvaNqK4eLpe86gSABrw.jpeg",
                      heigh: 60,
                      width: 60,
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                        children: [
                          TextSpan(text: "in 3 min read \n"),
                          TextSpan(text: "5 days ago"),
                          TextSpan(
                              text: " . ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          TextSpan(text: "6 min read"),
                        ],
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
