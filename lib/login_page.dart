import 'package:flutter/material.dart';
import 'package:signal_vip/blog_page.dart';
import 'package:signal_vip/password_recovery.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                 'خوش آمدید VIP به اپیکیشن سیگنال ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    fontFamily: 'vazir',
                  ),
                ),
                Image(image: AssetImage('assets/images/w.png')),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(200.0, 40.0),
                    side: BorderSide(color: Colors.black, width: 2.0),
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    navigateToBlogPage(context, BlogScreen());
                  },
                  child: Text('ورود به حساب', style: TextStyle(fontSize: 16.0)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    minimumSize: Size(200.0, 40.0),
                  ),
                  onPressed: () {
                    navigateToBlogPage(context, BlogScreen());
                  },
                  child: Text('ثبت نام', style: TextStyle(fontSize: 16.0)),
                ),
                TextButton(
                  style: TextButton.styleFrom(foregroundColor: Colors.grey),
                  onPressed: () {
                    navigateToBlogPage(context, PasswordRecovery());
                  },
                  child: Text(
                    'فراموشی رمز عبور',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void navigateToBlogPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
      ),
    );
  }
}
