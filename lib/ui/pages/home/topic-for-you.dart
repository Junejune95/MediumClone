import 'package:flutter/material.dart';
import 'package:mediumClone/ui/styles/app-style.dart';

class TopicForYou extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Topics for you",
              style: subTitle,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (c, index) => Stack(
                  alignment: Alignment.bottomLeft,
                  children: <Widget>[
                    _CardWithImg(
                      img:
                          "https://specials-images.forbesimg.com/imageserve/5f302109ffad89f9130e07db/960x0.jpg?cropX1=0&cropX2=4800&cropY1=243&cropY2=2943",
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "JavaScript",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardWithImg extends StatelessWidget {
  final String title;
  final String img;

  const _CardWithImg({Key key, this.title, this.img}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.2,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Image.network(
          img,
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        // elevation: 5,
        // margin: EdgeInsets.all(5),
      ),
    );
  }
}
