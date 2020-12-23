import 'package:flutter/material.dart';
import 'package:mediumClone/ui/widgets/titleImgRow-widget.dart';

class CommonViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 5),
              child: Text(
                "POPULAR ON MEDIUM",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TitleImgRowWidget(
                title: "4 Useful CSS Functions That You Should Know",
                img: "https://miro.medium.com/fit/c/200/200/0*lqZUepkTlmgLP6B5",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                          ),
                          children: [
                            TextSpan(text: "Abhay Parashar"),
                            TextSpan(
                              text: " in ",
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                            TextSpan(text: "Level Up Coding")
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                          ),
                          children: [
                            TextSpan(text: "Dec 10"),
                            TextSpan(
                              text: " . ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            TextSpan(text: "4 min read"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Icon(
                          Icons.bookmark_outline,
                          color: Colors.black54,
                        ),
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(color: Colors.grey)
          ],
        ),
      ),
    );
  }
}
