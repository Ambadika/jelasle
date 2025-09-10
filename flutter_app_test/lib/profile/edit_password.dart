import 'package:flutter/material.dart';

class EditPasswordPage extends StatefulWidget {
  const EditPasswordPage({super.key});

  @override
  State<EditPasswordPage> createState() => _EditPasswordPageState();
}

class _EditPasswordPageState extends State<EditPasswordPage> {
  final _oldPasswordController = TextEditingController();
  final _confirmOldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();

  bool _obscure1 = true;
  bool _obscure2 = true;
  bool _obscure3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Edit Password",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check, color: Colors.white),
            onPressed: () {
              // Simpan password (nanti bisa ditambahin logic Firebase / backend)
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Password berhasil diperbarui")),
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Edit Password",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 30),

            // Password Lama
            _buildPasswordField(
              controller: _oldPasswordController,
              hint: "Masukkan Password Lama",
              obscure: _obscure1,
              onToggle: () => setState(() => _obscure1 = !_obscure1),
            ),
            const SizedBox(height: 16),

            // Konfirmasi Password Lama
            _buildPasswordField(
              controller: _confirmOldPasswordController,
              hint: "Konfirmasi Password Lama",
              obscure: _obscure2,
              onToggle: () => setState(() => _obscure2 = !_obscure2),
            ),
            const SizedBox(height: 16),

            // Password Baru
            _buildPasswordField(
              controller: _newPasswordController,
              hint: "Password Baru",
              obscure: _obscure3,
              onToggle: () => setState(() => _obscure3 = !_obscure3),
            ),

            const SizedBox(height: 40),

            // Tombol konfirmasi
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  if (_oldPasswordController.text.isEmpty ||
                      _confirmOldPasswordController.text.isEmpty ||
                      _newPasswordController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Harap isi semua field")),
                    );
                    return;
                  }
                  if (_oldPasswordController.text !=
                      _confirmOldPasswordController.text) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text("Konfirmasi password lama tidak cocok")),
                    );
                    return;
                  }

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Password berhasil diganti")),
                  );
                },
                child: const Text(
                  "Konfirmasi",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildPasswordField({
    required TextEditingController controller,
    required String hint,
    required bool obscure,
    required VoidCallback onToggle,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.cyan[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          prefixIcon: const Icon(Icons.lock, color: Colors.black54),
          suffixIcon: IconButton(
            icon: Icon(
              obscure ? Icons.visibility_off : Icons.visibility,
              color: Colors.black54,
            ),
            onPressed: onToggle,
          ),
          hintText: hint,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
