import 'package:flutter/material.dart';

class Tanbeeh {
  static void showTanbeeh(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('تنبيه'),
          content: const Text('تنبيه هام: تطبيقنا مجاني وهدفنا دعم الفريق والمطورين من خلال أرباح بسيطة من الإعلانات. نرجو منك تفهم الأمر والصبر على الإعلانات. في حال ظهر لك أي إعلان غير لائق، يرجى تصويره وإرساله لنا لحظره فورًا. نشكر دعمك وثقتك بنا! ملاحظة: عند ظهور إعلان، انتظر لثوانٍ قليلة وسيتم نقلك تلقائيًا إلى الصفحة المطلوبة.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // لإغلاق الرسالة
              },
              child: const Text('إغلاق'),
            ),
          ],
        );
      },
    );
  }
}
