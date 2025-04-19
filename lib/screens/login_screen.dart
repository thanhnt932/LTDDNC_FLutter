import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Đăng nhập")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Chào mừng!",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),

            // Ô nhập Username
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Tên đăng nhập',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),

            // Ô nhập Mật khẩu
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Mật khẩu',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),

            // Nút đăng nhập
            ElevatedButton(
              onPressed: () {
                final username = usernameController.text;
                final password = passwordController.text;

                // Xử lý đăng nhập
                if (username == 'admin' && password == '123') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Đăng nhập thành công!")),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Sai tên đăng nhập hoặc mật khẩu")),
                  );
                }
              },
              child: Text('Đăng nhập'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), // full width button
              ),
            ),
          ],
        ),
      ),
    );
  }
}
