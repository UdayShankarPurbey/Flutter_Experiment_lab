import 'package:flutter/material.dart';

class FlowerDetails extends StatelessWidget {
  const FlowerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(tag : "flower",child: Image.asset('assets/images/flower/flower-02.jpg')),
    );
  }
}
