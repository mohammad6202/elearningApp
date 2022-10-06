import 'package:flutter/material.dart';

class Correct extends StatelessWidget {
  const Correct({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Image(image: AssetImage("images/R.gif")),
    );
  }
}

class Wrong extends StatelessWidget {
  const Wrong({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Image(image: AssetImage("images/X.gif")),
    );
  }
}
