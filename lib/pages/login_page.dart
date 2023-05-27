import 'dart:html';

import 'package:flutter/material.dart';
import 'package:yash_osush/pages/profile_page.dart';
import 'package:yash_osush/utils/style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back, color: maintxt),
        ),
        title: Text('Registrasiya', style: heading2),
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 110, right: 20, left: 20),
              child: Form(
                  key: _loginFormKey,
                  child: Column(children: [
                    Container(
                      child: Image.asset(
                        'assets/logo.png',
                        height: 70,
                        width: 70,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(xsmall),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("E-mail", style: heading1),
                          TextFormField(
                            validator: (textValue) {
                              if (textValue == null || textValue.isEmpty) {
                                return 'Email doldur!';
                              }
                            },
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: theme, width: 2.0),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: theme, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              hintText: "myaccount@gmail.com",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30, left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("parol", style: heading1),
                          TextFormField(
                            validator: (textValue) {
                              if (textValue == null || textValue.length < 6) {
                                return '6 sandan kan maglumat girkizin';
                              }
                            },
                            obscureText: true,
                            obscuringCharacter: '•',
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: theme, width: 2.0),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: theme, width: 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              hintText: "*******",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          Container(
                              padding:
                                  EdgeInsets.only(top: 30, left: 10, right: 10),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("username", style: heading1),
                                    TextFormField(
                                      validator: (textValue) {
                                        if (textValue == null ||
                                            textValue.length < 6) {
                                          return '6 sandan kan maglumat girkizin';
                                        }
                                      },
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: theme, width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: theme, width: 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30))),
                                        hintText: 'ÝaşÖsüş',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 50),
                                      child: InkWell(
                                        onTap: () {
                                          if (_loginFormKey.currentState!
                                              .validate()) {
                                            _loginFormKey.currentState!.save();
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Profile()));
                                          }
                                        },
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: maintxt,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Center(
                                            child: Text('Gir', style: bottom),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]))
                        ],
                      ),
                    )
                  ])))
        ],
      ),
    );
  }
}
