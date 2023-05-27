import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../components/heading.dart';
import '../components/search.dart';
import '../components/work_cont.dart';
import '../utils/style.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(medium),
      child: Column(
        children: [
          HeadSection(),
          SizedBox(height: medium),
          SearchSection(),
          SizedBox(height: medium),
          Work()
        ],
      ),
    )));
  }
}
