import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              width: 250,
              height: 300,
             decoration: BoxDecoration(
               color: Colors.black,
               borderRadius: BorderRadius.circular(15)
             ),
            )
          ],
        ),
      ),
    );
  }
}
