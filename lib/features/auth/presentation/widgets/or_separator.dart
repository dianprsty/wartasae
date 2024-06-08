import 'package:flutter/material.dart';

class OrSeparator extends StatelessWidget {
  const OrSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[500] as Color),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.only(start: 8, end: 8),
          child: Text("or"),
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[500] as Color),
            ),
          ),
        )
      ],
    );
  }
}
