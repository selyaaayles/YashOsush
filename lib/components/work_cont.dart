import 'package:flutter/material.dart';
import 'package:yash_osush/utils/style.dart';

import '../pages/profile_page.dart';

class Work extends StatelessWidget {
  List avatars = ['avatar.png', 'avatar_2.png', 'start.png'];
  List maintext = [
    'UI/UX designer',
    'Mobile developer',
    'UI/UX designer',
    'Web developer'
  ];
  List text = [
    "Kurslary gutaranyma 5 ay boldy.\nIşleriňizi islegiňize görä edip berip bilýärin.",
    "Ýokary ballar bilen kurslary tamamlap,\nlocalnyy hackatonda yer aldym.",
    "Biz komandamyza junior web developer gözleyäs"
  ];

  Work({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      itemCount: avatars.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: small),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: maintxt)),
            width: MediaQuery.of(context).size.width,
            height: 175,
            child: Padding(
              padding: EdgeInsets.all(xsmall),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(avatars[index]),
                    radius: 60,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        maintext[index],
                        style: heading1,
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          text[index],
                          style: descrtext,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 100),
                        child: InkWell(
                          child: Container(
                            width: 95,
                            height: 25,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: maintxt),
                            child: Center(
                              child: Text(
                                'Görmek',
                                style: bottom,
                              ),
                            ),
                          ),
                          onTap: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile()));
                          }),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
