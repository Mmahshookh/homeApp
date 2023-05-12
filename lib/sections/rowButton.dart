import 'package:flutter/material.dart';

class RowButton extends StatelessWidget {
  final bool isSelected;
  final String text;
  const RowButton({Key? key, this.isSelected = false, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text,
            style: isSelected
                ? TextStyle(color: Colors.black)
                : TextStyle(color: Colors.grey)),
        SizedBox(
          height: 5,
        ),
        isSelected
            ? Container(
                height: 5,
                width: 5,
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
              )
            : SizedBox()
      ],
    );
  }
}
