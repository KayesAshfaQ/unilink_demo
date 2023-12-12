import 'package:flutter/material.dart';

import '../constants/assets_paths.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xffD05E60),
              Color(0xff7354C3),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "UniLinks APP",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "If you don't have the app installed, what are you waiting for?\nDownload it now:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              AssetsPaths.APP_STORE_BANNER,
              width: 200,
            ),
            const SizedBox(height: 20),
            Image.asset(
              AssetsPaths.PLAY_STORE_BANNER,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}