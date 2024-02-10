import 'package:flutter/material.dart';

Widget listtilecard(
    {required String title,
    required IconData leading,
    required IconData trailing,
    void Function()? function


    }) {
  return ListTile(
    onTap: () {},
    title: Text(title),
    leading: Icon(leading),
    trailing: Icon(trailing),
  );
}
