import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Container(
            width: 400,
            height: 500,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8.0,
                  offset: Offset(3, 4),
                ),
              ],
            ),
            child: const Center(
              child: Text(
                "1",
                style: TextStyle(fontSize: 200, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ));
  }
}
