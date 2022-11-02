import 'package:get/get.dart';
import 'package:flutter/material.dart';

// Function
signOut() {
  Get.defaultDialog(
    title: 'Confirmation',
    middleText: 'Voulez vous vramment quité ?',
    textCancel: 'Cancel',
    textConfirm: 'Confirm',
    buttonColor: Colors.brown,
    /*confirmTextColor: Colors.white,
  cancelTextColor: Colors.black45,
  onConfirm: (){Get.back();},
  onCancel: (){},*/
    radius: 70,
    barrierDismissible: false, // Must click one Button
    actions: [
      Container(
        // We can put an image
        width: 240,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ],
  );
}