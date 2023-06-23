import 'package:flutter/material.dart';

class SenhaRedefinida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = constraints.maxWidth;
          final maxHeight = constraints.maxHeight;

          return Container(
            width: maxWidth,
            height: maxHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color(0xff9dcf88),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: maxWidth * 0.27,
              vertical: maxHeight * 0.3,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Senha  redefinida \ncom sucesso!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: maxWidth * 0.05,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: maxHeight * 0.02),
                Container(
                  width: maxWidth * 0.26,
                  height: maxWidth * 0.26,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: maxWidth * 0.15,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
