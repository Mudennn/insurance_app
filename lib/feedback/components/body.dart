import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../components/dropdown_button.dart';
import '../../components/feedback_button.dart';
import '../../components/input_field.dart';
import '../../size_config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  DateTime selectedDate = DateTime.now();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  DateTimeRange dateRange =
      DateTimeRange(start: DateTime(2019, 11, 5), end: DateTime(2130, 11, 5));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(16)),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Text(
            //   "Give Feedback",
            //   style: TextStyle(
            //       fontSize: 22,
            //       color: headingColor,
            //       fontWeight: FontWeight.bold),
            // ),
            // const SizedBox(
            //   height: 16,
            // ),
            // -- DATE -- //
            InputField(
              title: "Date",
              height: 54,
              hint: DateFormat('dd/MM/yyyy').format(selectedDate),
              widget: IconButton(
                onPressed: () {
                  getDateFromUser();
                },
                icon: const Icon(Icons.calendar_today_outlined),
                color: Colors.grey,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // -- DROPDOWN BUTTON -- //
            const DropdownBtn(),

            // -- TITLE -- //
            InputField(
              title: "Title",
              hint: "Enter your title",
              height: 54,
              controller: titleController,
            ),

            // -- DESCRIPTION -- //
            InputField(
              title: "Leave feedback",
              hint: "Enter your feedback",
              controller: descriptionController,
              height: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            FeedbackButton(title: 'Send feedback', press: () => validateData())
          ],
        ),
      ),
    );
  }

  validateData() {
    if (titleController.text.isNotEmpty &&
        descriptionController.text.isNotEmpty) {
      // add to database
      // back to previous page
      // Navigator.pushNamed(context, ActivityPage.routeName); -> nak send ke mana
    } else if (titleController.text.isEmpty ||
        descriptionController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Row(
            children: const [
              Icon(
                Icons.warning_amber_outlined,
                color: Colors.red,
                size: 16,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "All fields are required!",
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
          backgroundColor: Colors.white,
          showCloseIcon: true,
          closeIconColor: Colors.red,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  // GET DATE //
  getDateFromUser() async {
    DateTime? pickerDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015),
      lastDate: DateTime(2123),
    );

    if (pickerDate != null) {
      setState(() {
        selectedDate = pickerDate;
      });
    } else {
      if (kDebugMode) {
        print("Something is wrong");
      }
    }
  }
}
