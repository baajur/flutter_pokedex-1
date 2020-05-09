import 'package:flutter/material.dart';
import 'package:pokedex/configs/images.dart';

import '../../../routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    init();
  }

  void init() async {
    await AppImages.precacheAssets(context);

    await AppNavigator.replaceWith(Routes.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Pokedex'),
      ),
    );
  }
}
