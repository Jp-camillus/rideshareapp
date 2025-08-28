import 'package:flutter/material.dart';
import 'package:rideshareapp/constant/appcolor.dart';

class Customtextfield extends StatefulWidget {
  final bool iwantfronticon;
  final bool iwantbothicon;
  final String tittle;
  final Widget prefixicon;
  final Widget suffixicon;
  final bool obscure;
  const Customtextfield({
    super.key,
    required this.iwantfronticon,
    required this.iwantbothicon,
    required this.tittle,
    required this.prefixicon,
    required this.suffixicon,
    required this.obscure,
  });

  @override
  State<Customtextfield> createState() => _CustomtextfieldState();
}

class _CustomtextfieldState extends State<Customtextfield> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height.round();
    var w = MediaQuery.of(context).size.width.round();
    if (widget.iwantbothicon) {
      return TextField(
        obscureText: widget.obscure,
        decoration: InputDecoration(
          suffixIcon: widget.suffixicon,
          prefixIcon: widget.prefixicon,
          hintText: widget.tittle,
          hintStyle: TextStyle(color: Appcolor.grytextfield),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Appcolor.primary),
            borderRadius: BorderRadius.circular(w * 0.039),
          ),

          border: OutlineInputBorder(
            borderSide: BorderSide(color: Appcolor.grytextfield),
            borderRadius: BorderRadius.circular(w * 0.039),
          ),
        ),
      );
    } else if (widget.iwantfronticon) {
      return TextField(
        decoration: InputDecoration(
          prefixIcon: widget.prefixicon,
          hintText: widget.tittle,
          hintStyle: TextStyle(color: Appcolor.grytextfield),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Appcolor.primary),
            borderRadius: BorderRadius.circular(w * 0.039),
          ),

          border: OutlineInputBorder(
            borderSide: BorderSide(color: Appcolor.grytextfield),
            borderRadius: BorderRadius.circular(w * 0.039),
          ),
        ),
      );
    }
    return TextField(
      decoration: InputDecoration(
        hintText: widget.tittle,
        hintStyle: TextStyle(color: Appcolor.grytextfield),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Appcolor.primary),
          borderRadius: BorderRadius.circular(w * 0.039),
        ),

        border: OutlineInputBorder(
          borderSide: BorderSide(color: Appcolor.grytextfield),
          borderRadius: BorderRadius.circular(w * 0.039),
        ),
      ),
    );
  }
}
