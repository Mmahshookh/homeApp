import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerButtton extends StatelessWidget {
  final String text;
  bool isSelected;

  ContainerButtton({Key? key, required this.text, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Container(
            height: 35,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.pink[200],
            ),
            child: Center(
                child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            )),
          )
        : Container(
            height: 35,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[400],
            ),
            child: Center(
                child: Text(
              text,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            )),
          );
  }
}
