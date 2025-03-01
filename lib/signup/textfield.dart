import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Textfield extends StatelessWidget {
  TextEditingController namecontroller = TextEditingController();
   Textfield({
    Key? key,
    required this.Controller,
    required this.title,
  }) : super(key: key);
  TextEditingController Controller;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
        ),
        TextFormField(
          controller: Controller,
        )
      ],
    );
  }
}