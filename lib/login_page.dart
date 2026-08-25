import 'package:flutter/material.dart';
import 'package:signal_vip/blog_page.dart';
import 'package:signal_vip/password_recovery.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'خوش آمدید',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      fontFamily: 'vazir',
                    ),
                  ),
                  SizedBox(width: 14.0),
                  Icon(Icons.login),
                ],
              ),
              Image(image: AssetImage('assets/images/welcome.png')),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(200.0, 40.0),
                  side: BorderSide(color: Colors.white, width: 2.0),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  navigateToBlogPage(context, BlogScreen());
                },
                child: Text('ورود به حساب', style: TextStyle(fontSize: 16.0)),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  minimumSize: Size(200.0, 40.0),
                ),
                onPressed: () {
                  navigateToBlogPage(context, BlogScreen());
                },
                child: Text('ثبت نام', style: TextStyle(fontSize: 16.0)),
              ),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white),
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
