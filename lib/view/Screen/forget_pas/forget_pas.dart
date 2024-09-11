import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:tageer/const/color.dart';

class ForgetPas extends StatefulWidget {
  static const String RouteName = 'ForgetPas';

  const ForgetPas({Key? key}) : super(key: key);

  @override
  State<ForgetPas> createState() => _ForgetPasState();
}

class _ForgetPasState extends State<ForgetPas> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _resetPassword() async {
    if (_formKey.currentState!.validate()) {
      try {
        await _auth.sendPasswordResetEmail(email: _emailController.text.trim());
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('تم إرسال رابط إعادة تعيين كلمة المرور إلى بريدك الإلكتروني.'),
            backgroundColor: Colors.green,
          ),
        );
      } on FirebaseAuthException catch (e) {
        String message;
        if (e.code == 'user-not-found') {
          message = 'لم يتم العثور على مستخدم بهذا البريد الإلكتروني.';
        } else {
          message = 'حدث خطأ. الرجاء المحاولة لاحقًا.';
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        key: _scaffoldKey, // تعيين GlobalKey للـ Scaffold
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              children: [
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Container(
                            height: 3.h,
                            width: 5.w,
                            child: Image.asset('assets/image/22.png'))),
                    Image.asset('assets/image/111.png'),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Image.asset('assets/image/Tagheer Logo.png'),
                SizedBox(
                  height: 5.h,
                ),
                RichText(
                  text: TextSpan(
                    text: 'إعادة انشاء كلمة المرور',
                    style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.black,
                      fontFamily: 'Rubik',
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'البريد الإلكتروني',
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 10.sp,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      hintText: 'ex:mohammad@gmail.com',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'الرجاء إدخال بريدك الإلكتروني';
                      }
                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'الرجاء إدخال بريد إلكتروني صالح';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                GestureDetector(
                  onTap: _resetPassword, // استدعاء الدالة عند الضغط
                  child: Container(
                    alignment: Alignment.center,
                    height: 5.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: color.backgraound_splash,
                    ),
                    child: Text(
                      'إعادة تعيين كلمة المرور',
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: 15.sp,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
