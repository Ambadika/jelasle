import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/images/lojo.png', width: 368, height: 368),
            SizedBox(height: 15),
            Text(
              'Sign Up',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 33),
            ElevatedButton(
              onPressed: () {
                // Aksi ketika tombol ditekan
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Warna latar tombol
                foregroundColor: Colors.white, // Warna teks & ikon
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ), // Radius sudut tombol
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ), // Opsional
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.login), // Ikon
                  SizedBox(width: 8), // Jarak antara ikon & teks
                  Text(
                    'Masuk', // Teks tombol
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors
                          .white, // Warna teks (opsional, bisa di styleFrom juga)
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
