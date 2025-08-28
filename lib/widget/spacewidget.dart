import 'package:flutter/cupertino.dart';

class Spacewidgetheight extends StatelessWidget {
  final double space;
  const Spacewidgetheight({super.key, required this.space});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: space);
  }
}

class Spacewidgetwidth extends StatelessWidget {
  final double space;
  const Spacewidgetwidth({super.key, required this.space});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: space);
  }
}
