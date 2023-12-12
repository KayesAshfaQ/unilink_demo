import 'package:flutter/material.dart';

import 'common/global_context/utils/contect_utility.dart';
import 'common/uni_links/core/services/uni_links_service.dart';
import 'screens/green_screen.dart';
import 'screens/home_screen.dart';
import 'screens/red_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await UniLinksService.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: ContextUtility.navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'UniLinks Project',
      routes: {
        '/': (_) => const HomeScreen(),
        '/green-promo': (_) => const GreenPromoScreen(),
        '/red-promo': (_) => const RedPromoScreen(),
      },
    );
  }
}