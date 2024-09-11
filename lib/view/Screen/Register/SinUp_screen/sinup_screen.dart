import 'package:flutter/material.dart';

import '../body/body_sinup.dart';

class SinUpScreen extends StatelessWidget {
  static const String RoutName = 'SinUPScreen';

  const SinUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: BodySinup(),
    );
  }
}
