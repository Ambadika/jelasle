import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.cyan,
        title: const Text("Saya", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          // ikon keranjang
          IconButton(
            onPressed: () {
              // Arahkan ke halaman keranjang
            },
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        children: [
          // Header Profil
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.cyan,
            child: Row(
              children: [
                // Foto profil
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(
                    "assets/profile.png",
                  ), // ganti assetmu
                ),
                const SizedBox(width: 16),
                // Info nama & followers
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Rasya Ganteng",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "6 Pengikut | 0 Diikuti",
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // List menu
          Expanded(
            child: ListView(
              children: [
                _buildMenuItem(Icons.person, "Edit Profil", onTap: () {}),
                _buildMenuItem(Icons.lock, "Edit Password", onTap: () {}),
                _buildMenuItem(Icons.info, "Info Aplikasi", onTap: () {}),
                _buildMenuItem(Icons.help_outline, "Bantuan", onTap: () {}),
                _buildMenuItem(
                  Icons.logout,
                  "Log Out",
                  color: Colors.red,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // posisi "Saya"
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Beranda"),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifikasi",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Saya"),
        ],
      ),
    );
  }

  Widget _buildMenuItem(
    IconData icon,
    String title, {
    VoidCallback? onTap,
    Color? color,
  }) {
    return ListTile(
      leading: Icon(icon, color: color ?? Colors.black87),
      title: Text(
        title,
        style: TextStyle(color: color ?? Colors.black87, fontSize: 16),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: onTap,
    );
  }
}
