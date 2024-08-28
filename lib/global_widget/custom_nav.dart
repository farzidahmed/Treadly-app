import 'package:flutter/material.dart';
import 'package:list_json/style/style.dart';


class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  final Color? buttonColor;
  final Color? textColor;
  final Color? borderColor;
  final double? fontSize;

  const CustomElevatedButton({
    super.key,
    // default height
    required this.onPressed,
    required this.buttonText,
    this.buttonColor,
    this.textColor,
    this.borderColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor ?? Colors.white,
        side: BorderSide(color: borderColor ?? Colors.white, width: 1),
      ),
      child: Heading(
        data: buttonText,
        color: textColor ??Color.fromRGBO(51, 144, 124, 1),
        fontSize: fontSize ?? 18,
      ),
    );
  }
}


class CustomIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;


  final double? fontSize;
  final IconData icon;

  const CustomIconButton({
    super.key,
    // default height
    required this.onPressed,
    required this.buttonText,

    this.fontSize, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: const BorderSide(  color:  Colors.white, width: 1),
      ),
      icon: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,),
        child: Row(
          children: [
            Icon(icon,color: Colors.white,),
            const SizedBox(width: 5,),
            Heading(
              data: buttonText,
              color: Colors.white,
              fontSize: fontSize ?? 14,
            )
          ],
        ),
      ),

    );
  }
}
