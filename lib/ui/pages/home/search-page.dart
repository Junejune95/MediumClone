import 'package:flutter/material.dart';
import 'package:mediumClone/ui/styles/app-style.dart';

class SearchPage extends StatelessWidget {
  final List<String> typeLists = [
    "Programming",
    "JavaScript",
    "UX",
    "Visual Design",
    "Software Engineering",
    "Education",
    "Books",
    "Business",
    "Creativity"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // IconButton(
                  //     icon: Icon(Icons.arrow_back_ios_outlined),
                  //     onPressed: () {}),
                  Icon(Icons.arrow_back_ios_outlined),
                  Container(
                    height: 45,
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "Search Medium",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Explore topics",
                style: title,
              ),
              SizedBox(
                height: 15,
              ),
              for (var type in typeLists)
                FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      type,
                      style: btnGreen.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
