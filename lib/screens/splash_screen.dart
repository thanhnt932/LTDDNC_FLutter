import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Chuyển trang sau 10 giây
    Future.delayed(Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nhóm 9:',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('• Huỳnh Trung Kiên',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            Text('• Ngô Minh Thuận',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            Text('• Nguyễn Thế Thành',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            SizedBox(height: 30),
            CircularProgressIndicator(),
            SizedBox(height: 10),
            Text('Đang chuyển sang đăng nhập...'),
          ],
        ),
      ),
    );
  }
}
