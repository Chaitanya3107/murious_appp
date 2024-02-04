import 'package:flutter/material.dart';

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: const Scaffold(
        body: Background1(),
      ),
    );
  }
}

class Background1 extends StatelessWidget {
  const Background1({Key? key});

  @override
  Widget build(BuildContext context) {
    double totalHeight = MediaQuery.of(context).size.height;
    double totalWidth = MediaQuery.of(context).size.width;

    return Container(
      width: totalWidth,
      height: totalHeight,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Colors.black, Color(0xFF1C0038)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 270.96,
            top: 193.12,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(2.91),
              child: Container(
                width: 384,
                height: 372,
                decoration: const ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-0.10, 0.99),
                    end: Alignment(0.1, -0.99),
                    colors: [Color(0xFF7B1FAE), Color(0x5178206F)],
                  ),
                  shape: StarBorder.polygon(
                    sides: 3,
                    pointRounding: .2,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 367.84,
            top: 1045.20,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(-2.59),
              child: Container(
                width: 384,
                height: 372,
                decoration: const ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-0.07, -1.00),
                    end: Alignment(0.07, 1),
                    colors: [Color(0xFF7B1FAE), Color(0x0078206F)],
                  ),
                  shape: StarBorder.polygon(
                    sides: 3,
                    pointRounding: .2,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 184.89,
            top: 318.89,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(-2.09),
              child: Container(
                width: 109.87,
                height: 106.43,
                decoration: const ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-0.07, -1.00),
                    end: Alignment(0.07, 1),
                    colors: [Color(0xFF7B1FAE), Color(0x0078206F)],
                  ),
                  shape: StarBorder.polygon(
                    sides: 3,
                    pointRounding: .2,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 123.98,
            top: 570.79,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(-2.59),
              child: Container(
                width: 112.76,
                height: 109.24,
                decoration: const ShapeDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-0.07, -1.00),
                    end: Alignment(0.07, 1),
                    colors: [Color(0xFF7B1FAE), Color(0x0078206F)],
                  ),
                  shape: StarBorder.polygon(
                    sides: 3,
                    pointRounding: .2,
                  ),
                ),
              ),
            ),
          ),
          // Add more Positioned widgets as needed
        ],
      ),
    );
  }
}
