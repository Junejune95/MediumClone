import 'package:flutter/material.dart';
import 'package:mediumClone/ui/styles/app-style.dart';

class ReadingListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      color: Color(0xFFFDF9E0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Reading list",
              style: title,
            ),
             SizedBox(
               height: _screenSize.height,
               child: ListView.builder(
                shrinkWrap: true,
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (c, index) => _CardWidget(),
              ),
             ),
           
          ],
        ),
      ),
    );
  }
}

class _CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            "https://miro.medium.com/fit/c/400/266/0*VuaSrxgkQ48JOmsd",
            height: 100,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              "The 11 Most Valuable Lessons I Learned through my UX/UI....",
              style: subTitle,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Trista liu",
                    style: normalFont,
                  ),
                  TextSpan(
                    text: " in ",
                    style: normalFont.copyWith(
                      color: Colors.black45,
                    ),
                  ),
                  TextSpan(
                    text: "Muzi - Design Inspiration",
                    style: normalFont,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(text: "12/4/2017", style: boldFont54),
                  TextSpan(
                    text: " . ",
                    style: boldFont54.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  TextSpan(text: "10 min read", style: boldFont54),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
