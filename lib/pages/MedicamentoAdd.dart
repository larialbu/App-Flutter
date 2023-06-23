import 'package:flutter/material.dart';

class MedicamentoAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 390,
        height: 844,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.white,
        ),
        padding: const EdgeInsets.only(top: 69, bottom: 188),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: FlutterLogo(size: 24),
            ),
            Container(
              width: 391,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 375,
                    height: 12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: FlutterLogo(size: 12),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "1 de 2",
                          style: TextStyle(
                            color: Color(0xff8c8e97),
                            fontSize: 16,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 375,
                    height: 12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: FlutterLogo(size: 12),
                  ),
                  Container(
                    width: 375,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Adicionar Medicamento",
                          style: TextStyle(
                            color: Color(0xff191d30),
                            fontSize: 20,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 375,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: FlutterLogo(size: 40),
                  ),
                  Container(
                    width: 391,
                    height: 74,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 64,
                                height: 64,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xfff2f6f7),
                                ),
                              ),
                              SizedBox(height: 20),
                              Transform.rotate(
                                angle: -0.09,
                                child: Container(
                                  width: 30.53,
                                  height: 30.99,
                                  child: FlutterLogo(size: 30.53),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 24),
                        Container(
                          width: 64,
                          height: 64,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 64,
                                height: 64,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xfff2f6f7),
                                ),
                              ),
                              SizedBox(height: 20),
                              Transform.rotate(
                                angle: -1.92,
                                child: Container(
                                  width: 18.65,
                                  height: 40.83,
                                  child: FlutterLogo(size: 18.65),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 24),
                        Container(
                          width: 64,
                          height: 64,
                          child: Stack(
                            children: [
                              Container(
                                width: 64,
                                height: 64,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xfff2f6f7),
                                ),
                              ),
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 30.98,
                                    height: 35.31,
                                    child: FlutterLogo(size: 30.98),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 24),
                        Container(
                          width: 64,
                          height: 64,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 64,
                                height: 64,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xfff2f6f7),
                                ),
                              ),
                              SizedBox(height: 20),
                              Transform.rotate(
                                angle: -0.35,
                                child: Container(
                                  width: 21.30,
                                  height: 40.02,
                                  child: FlutterLogo(size: 21.30),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Nome",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              width: 332,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0x54d9d9d9),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Escrever",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Dose",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
            Container(
              width: 332,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0x54d9d9d9),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Escrever",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Antes das\nrefeições",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffd9d9d9),
                fontSize: 16,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Depois das\nrefeições",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xffd9d9d9),
                fontSize: 16,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Esquecer",
              style: TextStyle(
                color: Color(0xffd9d9d9),
                fontSize: 16,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MedicamentoAdd(),
  ));
}
