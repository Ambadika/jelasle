import 'package:flutter/material.dart';

class SignUpPageHp extends StatelessWidget {
  const SignUpPageHp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // bikin 2 section
          children: [
            // ===== SECTION ATAS =====
            Column(
              children: [
                Image.asset('assets/images/lojo.png', width: 163, height: 163),
                const SizedBox(height: 15),
                const Text(
                  'Masukan No Hp Untuk Lanjut',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 33),

                // Row nomor hp
                Row(
                  children: [
                    // Prefix +62
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 14,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFF07BEB8),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        "+62",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF07BEB8),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    // Input nomor HP
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF07BEB8),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "812-3456-7891",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  "Kami Akan Menggunakan Nomer Hp\n"
                  "Ini Sebagai ID Kamu Dan Untuk\n"
                  "Mengamankan Akun Kamu",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black87),
                ),
              ],
            ),

            // ===== SECTION BAWAH =====
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {Navigator.pushReplacementNamed(context, '/otp');},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF07BEB8),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 19,
                    vertical: 19,
                  ),
                ),
                child: const Text(
                  'Lanjutkan',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
