import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:velocity_x/velocity_x.dart';

import '../Consts/colors.dart';
import '../Consts/styles.dart';
import 'our_button.dart'; // Assuming you're using velocity_x for text styling.

Widget exitDialog(context) {
  return Dialog(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        "Confirm".text.fontFamily(bold).size(18).color(darkFontGrey).make(),
        const Divider(),
        10.heightBox,
        "Are you sure you want to Exit?".text.size(16).color(darkFontGrey).make(),
        10.heightBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ourButton(color: lightGrey, onPress: () {
              SystemNavigator.pop();
            }, textColor: whiteColor, title: "Yes"),
            ourButton(color: lightGrey, onPress: () {
              Navigator.pop(context);
            }, textColor: whiteColor, title: "No"),
          ],
        ),
      ],
    ).box.color(lightGrey).padding(const EdgeInsets.all(12)).rounded.make(),
  );
}
