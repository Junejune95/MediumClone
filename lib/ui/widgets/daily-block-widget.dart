import 'package:flutter/material.dart';
import 'package:mediumClone/ui/styles/app-style.dart';

class DailyBlockWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Angular Vs. React — The Most Definite Comparison between two titans",
                    style: subTitle,
                  ),
                  Row(
                    children: [
                      Text(
                        "Liu Ting Chun",
                        style: small,
                      ),
                      Text(
                        ".",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "8 min read",
                        style: small,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black54,
                        size: 18,
                      ),
                    ],
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.black54,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.network(
                "https://miro.medium.com/fit/c/400/266/1*870PDrTztGVL1AP24vmM_g.png",
                width: 50,
                height: 100,
                fit: BoxFit.contain,
                alignment: Alignment.topRight,
              ),
            )
          ],
        ),
      ),
    );
  }
}
