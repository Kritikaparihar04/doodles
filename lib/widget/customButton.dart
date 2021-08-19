import 'package:kirti_project/widget/progressCircle.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final double width;
  final Gradient gradient;
  final Color color;
  final IconData icon;
  final bool loading;
  final String label;
  final bool centerAlign;
  final bool boxShadow;
  final Color txtColor;
  const CustomButtonWidget({
    Key key,
    this.width,
    this.gradient,
    this.icon,
    this.centerAlign = false,
    this.color,
    this.loading = false,
    this.boxShadow = true,
    this.label,
    this.txtColor = Colors.lightBlueAccent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 00,
      ),
      decoration: BoxDecoration(
        // gradient: gradient,
        color: color,
        borderRadius: BorderRadius.circular(
          5,
        ),
        boxShadow: [
          BoxShadow(
            color: boxShadow ? Colors.grey.withOpacity(0.5) : Colors.transparent,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: (icon != null && centerAlign == false)
            ? MainAxisAlignment.spaceEvenly
            : MainAxisAlignment.center,
        children: [
          icon != null
              ? Icon(
            icon,
            color: Colors.white,
          )
              : Container(),
          SizedBox(
            width: centerAlign ? 10 : 0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.50),
            child: loading == true
                ? SizedBox(
              height: 19,
              width: 19,
              child: ProgressCircle(),
            )
                : Text(
              label,
              style: TextStyle(
                fontSize: 14,
                color: txtColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            width: icon != null && centerAlign == false ? 20 : 0,
          )
        ],
      ),
    );
  }
}
