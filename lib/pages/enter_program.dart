import 'package:flutter/material.dart';
import 'package:yash_osush/pages/programs_page.dart';

import '../utils/style.dart';

class Enter extends StatelessWidget {
  const Enter({super.key});

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
                context, MaterialPageRoute(builder: (context) => Programs()));
          },
        ),
        title: Text(
          'Grafic Design',
          style: heading2,
        ),
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/grafikdes.png',
            fit: BoxFit.cover,
            height: 250,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: EdgeInsets.all(medium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    'Grafiki dizaýn gurallary we programma üpjünçiligi bilen başlaň.Albomyň gapagyny,nyşanyny, korporatiw şahsyýetini, gaplama dizaýnyny dörediň we portfelde azyndan 7 eseri ýygnaň',
                    style: descrtext,
                  ),
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                ),
                Text(
                  'Modul: 10 sany',
                  style: descrtext,
                ),
                SizedBox(
                  width: small,
                ),
                Text(
                  'Gecyan wagty: 39 sagat',
                  style: descrtext,
                ),
                SizedBox(
                  width: small,
                ),
                Text(
                  'Dil: Rus, Tm, Eng',
                  style: descrtext,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        color: maintxt,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text('Yazylmak', style: bottom),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
