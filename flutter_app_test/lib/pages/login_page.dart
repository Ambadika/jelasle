import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/lojo.png', width: 163, height: 163),
              SizedBox(height: 15),
              Text(
                'Sign Up',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(height: 33),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF07BEB8),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 19, vertical: 19),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.login),
                      SizedBox(width: 55),
                      Text(
                        'Sign Up With Google',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(width: 58),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 27),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey[300],
                      endIndent: 10,
                    ),
                  ),
                  SizedBox(width: 22),
                  Text(
                    'Or',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  SizedBox(width: 22),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey[300],
                      indent: 10,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 27),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFFFFFF),
                    foregroundColor: Color(0xFF07BEB8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide(
                        color: Color(0xFF07BEB8), // Warna border
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 19, vertical: 19),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.login),
                      SizedBox(width: 55),
                      Text(
                        'Sign Up With Number Hp',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      SizedBox(width: 58),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
