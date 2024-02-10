// ignore_for_file: prefer_const_constructors

import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  TextEditingController weightCont = TextEditingController(text: '0');
  TextEditingController heightCont = TextEditingController(text: '0');
  bool isMale = false;
  bool isFemale = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text(
            "Welcome to BMI Application",
          ),
        ),
        backgroundColor: Color.fromARGB(255, 21, 40, 40),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (isMale == false) {
                            isMale = true;
                            isFemale = false;
                          } else {
                            isMale = false;
                            isFemale = false;
                          }
                        });
                      },
                      child: isMale
                          ? Container(
                              color: Colors.redAccent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.male,
                                    color: Colors.white,
                                    size: 70,
                                  ),
                                  Text(
                                    "Male",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          : Container(
                              color: Color.fromARGB(255, 100, 124, 161),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.male,
                                    size: 70,
                                  ),
                                  Text(
                                    "Male",
                                    style: TextStyle(fontSize: 30),
                                  )
                                ],
                              ),
                            ),
                    ),
                  )),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          setState(
                            () {
                              if (isFemale == false) {
                                isMale = false;
                                isFemale = true;
                              } else {
                                isMale = false;
                                isFemale = false;
                              }
                            },
                          );
                        },
                        child: isFemale
                            ? Container(
                                color: Colors.redAccent,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.female,
                                      color: Colors.white,
                                      size: 70,
                                    ),
                                    Text(
                                      "Female",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 30),
                                    )
                                  ],
                                ),
                              )
                            : Container(
                                color: Color.fromARGB(255, 100, 124, 161),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.female,
                                      size: 70,
                                    ),
                                    Text(
                                      "Female",
                                      style: TextStyle(fontSize: 30),
                                    )
                                  ],
                                ),
                              ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: Color.fromARGB(255, 100, 124, 161),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Height : ",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 120,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  cursorColor: Colors.black,
                                  controller: heightCont,
                                  decoration: InputDecoration(
                                    focusColor: Colors.black,
                                    //   hintText: "Enter Your Height...",
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              " FT",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  color: Color.fromARGB(255, 100, 124, 161),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Weight : ",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 120,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
                                child: TextField(
                                  keyboardType: TextInputType.number,
                                  cursorColor: Colors.black,
                                  controller: weightCont,
                                  decoration: InputDecoration(
                                    //hintText: "Enter Your Weight...",
                                    hintStyle: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              " KG",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white70,
            child: Icon(
              Icons.calculate_outlined,
              color: Colors.black87,
              size: 40,
            ),
            onPressed: () {
              BMI_Calculation();
            }));
  }

  BMI_Calculation() {
    double BMi = 0;
    var height, weight;
    weight = double.parse(weightCont.text);
    height = double.parse(heightCont.text);
    if (isFemale || isMale) {
      if (weight != 0.0 || height != 0.0) {
        height = height * 0.3048;
        BMi = (weight / height / height);
        String status = '';
        if (BMi < 18.5) {
          status = 'Under-Weight';
        } else if (BMi > 18.5 && BMi < 24.9) {
          status = 'Normal';
        } else if (BMi > 25 && BMi < 29.9) {
          status = 'Over-Weight';
        } else {
          status = 'Obesity';
        }
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: Text("BMI Results"),
            content: Container(
                height: 50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("BMI Ratio : ${BMi}"),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Status : ${status}",
                    ),
                  ],
                )),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: Container(
                  padding: const EdgeInsets.all(14),
                  child: const Text("okay"),
                ),
              ),
            ],
          ),
        );
        print("${status} + ${BMi}");
      } else {
        setState(() {
          weightCont.text = '0';
          heightCont.text = '0';
        });
        const snackBar = SnackBar(
          backgroundColor: Colors.black,
          content: Text(
            'Height or Weight or Gender is missing',
            style: TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.w400),
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } else {
      setState(() {
        weightCont.text = '0';
        heightCont.text = '0';
      });
      const snackBar = SnackBar(
        backgroundColor: Colors.black,
        content: Text(
          'Height or Weight or Gender is missing',
          style: TextStyle(
              color: Colors.red, fontSize: 20, fontWeight: FontWeight.w400),
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
