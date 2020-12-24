import 'package:flutter/material.dart';
import 'package:mediumClone/ui/styles/app-style.dart';

class TitleImgRowWidget extends StatelessWidget {
  final String title;
  final String img;
  final double width;
  final double heigh;
  const TitleImgRowWidget(
      {Key key, this.title, this.img, this.width, this.heigh})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Text(
            title,
            style: subTitle,
          ),
        ),
        Expanded(
          flex: 1,
          child: Image.network(
            img,
            width: this.width != null ? this.width : 50,
            height: this.heigh != null ? this.heigh : 90,
            fit: BoxFit.contain,
            alignment: Alignment.topRight,
          ),
        )
      ],
    );
  }
}
