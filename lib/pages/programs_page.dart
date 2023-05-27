import 'package:flutter/material.dart';
import 'package:yash_osush/pages/enter_program.dart';
import 'package:yash_osush/utils/style.dart';

import 'home_page.dart';

class Programs extends StatefulWidget {
  const Programs({super.key});

  @override
  State<Programs> createState() => _Programs();
}

class _Programs extends State<Programs> {
  List programs = [
    'Grafic design',
    'UI-UX design',
    'Fronted ',
    'Programmirleme '
  ];

  List images = [
    'assets/grafikdes.png',
    'assets/uiux.png',
    'assets/web.png',
    'assets/progr.png'
  ];

  List desc = [
    'Albomyň gapagyny,gaplama dizaýnyny dörediň we portfolýada eserleri ýygnaň',
    'Kompozisiýanyň esaslaryny, ýerleşişini we UX-ny ,Figma-da işlemegi öwrenersiňiz',
    'Sapaklarda başdan web saýtlaryň kodyny yazmagy öwrenersiňiz',
    'Hünärmenligi we tehnologiýany habarly saýlap,şol ugurda başarnyklary ösdürip bilersiňiz'
  ];
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
          'Okuw Programmalar',
          style: heading2,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(medium),
        child: ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: programs.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                  padding: EdgeInsets.only(bottom: small),
                  child: InkWell(
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Enter())));
                    }),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Image.asset(
                            images[index],
                            height: 150,
                            width: 150,
                          ),
                          SizedBox(
                            width: medium,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                programs[index],
                                style: heading1,
                              ),
                              Container(
                                width: 170,
                                child: Text(
                                  desc[index],
                                  style: descrtext,
                                ),
                              ),
                              SizedBox(
                                height: xsmall,
                              ),
                              Container(
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
                            ],
                          ),
                        ],
                      ),
                    ),
                  ));
            }),
      ),
    );
  }
}
