import 'package:flutter/material.dart';

class InfoApkPage extends StatelessWidget {
  const InfoApkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Info Aplikasi",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo utama di atas
            Center(
              child: Image.asset(
                "assets/lojo.png", // ganti dengan file logo kamu
                height: 80,
              ),
            ),
            const SizedBox(height: 12),

            // Judul dan versi
            const Text(
              "E-BANKK Lotusz",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const Text("Versi 0.1", style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 20),

            // Card + logo kecil di pojok kanan bawah
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.cyan.shade50,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "E-BANKK Lotusz",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text("Versi 0.1", style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 12),
                      Text(
                        "Aplikasi ini dirancang untuk memberikan pengalaman belanja yang mudah, cepat, dan menyenangkan bagi pengguna. "
                        "Kami terus berupaya meningkatkan layanan agar semakin nyaman digunakan dalam kehidupan sehari-hari.",
                        style: TextStyle(fontSize: 14, height: 1.4),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "© RasyaGanteng",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),

                // Logo kecil motong di pojok kanan bawah
                Positioned(
                  bottom: -20, // keluar sedikit dari box
                  right: -10, // agak keluar kanan
                  child: Image.asset("assets/lojo.png", height: 50),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
