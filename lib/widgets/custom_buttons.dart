import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String name;
  CustomButton({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
          border: Border.all(color: Colors.black)
      ),
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10,left: 10),
            child: Text(
              name,
              style: TextStyle(
              fontSize: 12,
                color: Colors.black
            ),
            ),
          ),
        ],
      ),
    );
  }
}
