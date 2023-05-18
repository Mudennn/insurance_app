import 'package:flutter/material.dart';
import 'package:insurance_app/size_config.dart';

import '../../components/profile_detail_field.dart';
import 'name_and_agent_id.dart';
import 'profile_image.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  final double coverHeight = 100;
  final double profileHeight = 100;
  final double profileHeight2 = 110;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.symmetric(vertical: getProportionateScreenHeight(16)),
        child: Column(
          children: [
            ProfileImage(profileHeight2: profileHeight2, profileHeight: profileHeight),
            const NameAndAgentId(),
            
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
              child: Column(
                children: [
                  // -- EMAIL -- //
                  const ProfileDetailField(
                    title: 'Email',
                    hint: "johndoe@gmail.com",
                  ),
                  // -- MOBILE -- //
                  const ProfileDetailField(
                    title: 'Mobile',
                    hint: "011-1111111",
                  ),
                  // -- START DATE -- //
                  const ProfileDetailField(
                    title: 'Start Date',
                    hint: "12 Apr 2023",
                  ),
                  // -- ADDRESS -- //
                  const ProfileDetailField(
                    title: 'Address',
                    hint: "Jalan Mawar, Taman Melati",
                  ),
                  // -- CITY AND POSTCODE -- //
                  Row(
                    children: const [
                    Expanded(
                      child: ProfileDetailField(
                        title: 'City',
                        hint: "Kajang",
                      ),
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                        child: ProfileDetailField(title: "Postcode", hint: "432000"))
                  ],),
                  const ProfileDetailField(title: "State", hint: "Selangor"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



