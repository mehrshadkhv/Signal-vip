import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'VIP اخبار و سیگنال های',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image(image: AssetImage('assets/images/s.png')),
              ),
              SizedBox(height: 10),
              Text(
                'برای 14 آبان SafeMoon سیگنال خرید ',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'خرید روی: 12،365',
                    style: TextStyle(color: Colors.green),
                  ),
                  SizedBox(width: 20),
                  Text('فروش روی: 12،560', style: TextStyle(color: Colors.red)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
