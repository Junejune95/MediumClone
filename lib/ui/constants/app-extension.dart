
import 'package:flutter/material.dart';
import 'package:mediumClone/ui/enum/menu-enum.dart';

extension BottonNavMenuExtension on MenuEnum {
  //label
  String get menuLabel {
    switch (this) {
      case MenuEnum.Home:
        return "Home";
        break;
      case MenuEnum.Audio:
        return "Audio";
        break;
      case MenuEnum.ReadingList:
        return "Reading list";
        break;
      case MenuEnum.Interests:
        return "Interests";
        break;
     
      default:
    }
  }
}
