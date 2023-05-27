import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yash_osush/pages/home_page.dart';
import 'package:yash_osush/utils/style.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme,
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40, top: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                'assets/logo.png',
                height: 50,
                width: 50,
              ),
            ),
            CircleAvatar(
              backgroundImage: AssetImage('start.png'),
              radius: 140,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Text(
                """Karýeraňyzda täze derejä geçmek üçin bilim we başarnyk gazanyp boljak bilim platformasy şeýle-de iş almak we işgär tapmak üçin platforma. """,
                style: heading2,
              ),
            ),
            InkWell(
              child: Container(
                width: 120,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: maintxt),
                child: Center(
                  child: Text(
                    'Başlamak',
                    style: bottom,
                  ),
                ),
              ),
              onTap: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
            )
          ],
        ),
      ),
    );
  }
}
