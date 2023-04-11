import 'package:flutter/material.dart';

import '../../constant.dart';

class NameAndAgentId extends StatelessWidget {
  const NameAndAgentId({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "John Doe",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: headingColor),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          "Agent ID",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: textColor.withOpacity(0.5),
          ),
        ),
        Text(
          "1",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: textColor.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
