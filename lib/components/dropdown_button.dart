import 'package:flutter/material.dart';

import '../constant.dart';

class DropdownBtn extends StatefulWidget {
  const DropdownBtn({super.key});

  @override
  State<DropdownBtn> createState() => _DropdownBtnState();
}

class _DropdownBtnState extends State<DropdownBtn> {
  String? valueChoose;
  List listItem = ["Category 1", "Category 2", "Category 3"];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Category",
          style: TextStyle(fontSize: 16, color: headingColor),
        ),
        Container(
          height: 54,
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.circular(12)),
          child: DropdownButton(
            hint: const Text("Category"),
            value: valueChoose,
            icon: const Icon(Icons.keyboard_arrow_down_outlined),
            isExpanded: true,
            underline: const SizedBox(),
            style: TextStyle(
                fontSize: 16,
                color: headingColor.withOpacity(0.7),
                fontWeight: FontWeight.w500),
            items: listItem.map((valueItem) {
              return DropdownMenuItem(value: valueItem, child: Text(valueItem));
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                valueChoose = newValue.toString();
              });
            },
          ),
        ),
      ],
    );
  }
}
