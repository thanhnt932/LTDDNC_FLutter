import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trang chủ'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              // Xóa token khi đăng xuất
              final prefs = await SharedPreferences.getInstance();
              await prefs.remove('access_token');
              await prefs.remove('refresh_token');
              
              // Chuyển về màn hình đăng nhập
              Navigator.of(context).pushReplacementNamed('/login');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Chào mừng đến với ứng dụng!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Đăng nhập thành công',
              style: TextStyle(fontSize: 18, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
} 