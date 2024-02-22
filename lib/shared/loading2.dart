import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading2 extends StatelessWidget {
  const Loading2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: const Center(
        child: SpinKitRing(
          color: Colors.white,
          size: 50.0,
          lineWidth: 5.0,
        ),
      ),
    );
  }
}
