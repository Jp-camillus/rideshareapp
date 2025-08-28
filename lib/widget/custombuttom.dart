import 'package:flutter/material.dart';
import 'package:rideshareapp/constant/appcolor.dart';
import 'package:rideshareapp/widget/spacewidget.dart';

class Custombuttom extends StatefulWidget {
  final String tittle;
  final Function()? tap;

  final double width;
  const Custombuttom({
    super.key,
    required this.tittle,
    required this.width,
    this.tap,
  });

  @override
  State<Custombuttom> createState() => _CustombuttomState();
}

class _CustombuttomState extends State<Custombuttom> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return GestureDetector(
      onTap: widget.tap,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Appcolor.gradientblue, Appcolor.gradientorang],
          ),
          borderRadius: BorderRadius.circular(w * 0.06),
        ),
        height: h * 0.06,
        alignment: Alignment.center,
        width: widget.width,
        child: Text(widget.tittle, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}

class Custombuttomwithicon extends StatefulWidget {
  final String tittle;
  final double width;
  final Widget icon;
  final Function()? tap;

  const Custombuttomwithicon({
    super.key,
    required this.tittle,
    required this.width,
    required this.icon,
    this.tap,
  });

  @override
  State<Custombuttomwithicon> createState() => _CustombuttomwithiconState();
}

class _CustombuttomwithiconState extends State<Custombuttomwithicon> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    return GestureDetector(
      onTap: widget.tap,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Appcolor.gradientblue, Appcolor.gradientorang],
          ),
          borderRadius: BorderRadius.circular(w * 0.06),
        ),
        height: h * 0.06,
        alignment: Alignment.center,
        width: widget.width,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              widget.icon,
              Spacewidgetwidth(space: w * 0.02),
              Text(widget.tittle, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
