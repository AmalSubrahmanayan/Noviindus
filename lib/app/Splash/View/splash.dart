import 'package:flutter/material.dart';
import 'package:noviindus/app/Splash/Controller/splash_controller.dart';
import 'package:noviindus/widget/constants/app_colors.dart';
import 'package:provider/provider.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<SplashController>(context);
    return Scaffold(
      backgroundColor: bgRed,
      body: Center(child: Image.asset("asset/image/logo.png")),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor: kWhite,
          ),
          onPressed: () {
            controller.getStart(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Get Started",
              style: TextStyle(
                color: bgRed,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
