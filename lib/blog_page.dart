import 'package:flutter/material.dart';
import 'package:signal_vip/custom_widgets/post_widget.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});

  final listBlogWidget = [
    getBlogPost(
      imageName: 's.png',
      title: 'برای 14 آبان SafeMoon سیگنال خرید ',
      sellPrice: 12560,
      buyPrice: 12365,
    ),
    getBlogPost(
      imageName: 'a.png',
      title: 'برای 14 آبان ACH سیگنال خرید ',
      sellPrice: 16960,
      buyPrice: 14865,
    ),
    getBlogPost(
      imageName: 'c.png',
      title: 'برای 14 آبان ATOM سیگنال خرید ',
      sellPrice: 23789,
      buyPrice: 20151,
    ),
    getBlogPost(
      imageName: 'r.png',
      title: 'برای 14 آبان XRP سیگنال خرید ',
      sellPrice: 29560,
      buyPrice: 25365,
    ),
  ];

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
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...listBlogWidget,
                  SizedBox(height: 20.0),
                  TextButton(
                    style: TextButton.styleFrom(foregroundColor: Colors.red),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'خروج از حساب',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
