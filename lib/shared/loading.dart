import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:murious_appp/app_colors.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.homeLightBackground,
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
