import 'package:flutter/material.dart';
import 'package:second_project/widgets/LoginForm.dart';

class Logintask extends StatefulWidget {
  @override
  State<Logintask> createState() => _LogintaskState();
}

class _LogintaskState extends State<Logintask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                color: Color.fromARGB(255, 0, 19, 186),
                height: MediaQuery.of(context).size.height * .55,
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 36),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: const Column(
                      children: [
                        Text('Get Started',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.bold)),
                        Text('Enter details to login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    height: 300,
                    padding: const EdgeInsets.all(30),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              spreadRadius: 4,
                              blurStyle: BlurStyle.normal)
                        ]),
                    child: Loginform(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
