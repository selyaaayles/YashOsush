import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yash_osush/utils/style.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          child: Image.asset('assets/logo.png'),
        ),
        Text(
          'Yaş Ösüş',
          style: nametext,
        )
      ],
    );
  }
}
