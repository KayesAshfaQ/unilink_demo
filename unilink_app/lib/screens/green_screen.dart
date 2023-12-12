import 'package:flutter/material.dart';

import '../common/uni_links/core/services/uni_links_service.dart';

class GreenPromoScreen extends StatelessWidget {
  const GreenPromoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green,
              Colors.greenAccent,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Text(
          "!!! Green Promo !!!\nCode: ${UniLinksService.promoId}",
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}