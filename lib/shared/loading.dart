import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: const Center(
        child: SpinKitRing(
          color: Color.fromARGB(255, 0, 0, 0),
          size: 50.0,
          lineWidth: 5.0,
        ),
      ),
    );
  }
}
