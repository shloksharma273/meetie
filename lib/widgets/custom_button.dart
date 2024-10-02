import 'package:flutter/material.dart';
import 'package:meetie/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text,
          style: TextStyle(
            fontSize: 17,
            color: Colors.white
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          minimumSize: const  Size(
            double.infinity,
            50,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )
        )
      ),
    );
  }
}
