import 'package:flutter/material.dart';


// ignore: must_be_immutable
class TextButtonWidget extends StatelessWidget {
  TextButtonWidget({
    Key? key,
    required this.title,
    required this.titlecolor,
    required this.buttonbackgroundcolor,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final Color titlecolor;
  final Color buttonbackgroundcolor;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        width: 324,
        height: 40,
        alignment: Alignment.center,
        margin: EdgeInsets.all(0.5),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: this.titlecolor,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: this.buttonbackgroundcolor,
        ),
      ),
    );
  }
}
