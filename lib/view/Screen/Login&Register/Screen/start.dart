import 'package:flutter/material.dart';
import 'package:tageer/view/Screen/Login&Register/Body/state_body.dart';
class Start extends StatelessWidget{
  static const String RoutName ='Start';
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
   return const Scaffold(
     backgroundColor: Colors.white,
     body:StartBody(),
   );
  }

}