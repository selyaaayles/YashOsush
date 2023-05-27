import 'package:flutter/material.dart';
import 'package:yash_osush/pages/first_page.dart';
import 'package:yash_osush/pages/home_page.dart';
import 'package:yash_osush/utils/style.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          child: Icon(
            Icons.arrow_back,
            size: 24,
            color: maintxt,
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
        title: Text(
          'Profil',
          style: heading2,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(medium),
        child: ListView(children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar.png'),
                    radius: 60,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Leýli Atajanowa', style: heading1),
                      Text('GRAFIC DESIGNER', style: heading1),
                      Text('leyliatajanova@gmail.com', style: descrtext),
                      Text('+99361000000', style: descrtext),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: small,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Iş tejribesi',
                    style: heading1,
                  ),
                  SizedBox(
                    height: small,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: maintxt)),
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: Padding(
                      padding: EdgeInsets.all(xsmall),
                      child: Text(
                        'Men özbaşdak bir näçe işleriň üstünde işledim.',
                        style: descrtext,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: small,
                  ),
                  Text(
                    'Işlerim',
                    style: heading1,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      controller: ScrollController(),
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 200,
                            height: 200,
                            child: Image.asset(
                              'assets/ishler.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      }),
                    ),
                  )
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
