import 'package:flutter/material.dart';

class Bemvindo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double maxWidth = size.width;
    final double maxHeight = size.height;

    return Scaffold(
      backgroundColor: Color(0xff9dcf88),
      body: Center(
        child: Container(
          width: maxWidth * 0.9,
          height: maxHeight * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Color(0xff9dcf88),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: maxWidth * 0.1,
              vertical: maxHeight * 0.1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Tudo certo por aqui,\nagora você está pronto para\ndesfrutar do nosso app!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: maxWidth * 0.06,
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
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Bemvindo(),
  ));
}
