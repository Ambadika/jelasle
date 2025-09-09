import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  File? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

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
        title: const Text("Edit Profil", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.check, color: Colors.white),
            onPressed: () {
              // TODO: Simpan data ke backend / firestore
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Profil berhasil disimpan")),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container untuk foto profil
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 24),
              decoration: BoxDecoration(
                color: Colors.cyan[50],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: _pickImage,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey[300],
                      backgroundImage: _image != null
                          ? FileImage(_image!)
                          : null,
                      child: _image == null
                          ? const Icon(
                              Icons.camera_alt,
                              size: 40,
                              color: Colors.white70,
                            )
                          : null,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Ubah Foto Profil",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Info profil
            _buildInfoTile("Nama", "Rasya Ganteng"),
            _buildInfoTile("Bio", "Atur Sekarang"),
            _buildInfoTile("Jenis Kelamin", "Atur Sekarang"),
            _buildInfoTile("Tanggal Lahir", "Atur Sekarang"),
            _buildInfoTile("No. Handphone", "08** **** **34"),
            _buildInfoTile("Email", "rasyaa@example.com", showArrow: false),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(String title, String value, {bool showArrow = true}) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: const TextStyle(fontSize: 14, color: Colors.black54),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (showArrow)
                const Icon(
                  Icons.arrow_forward_ios,
                  size: 14,
                  color: Colors.black45,
                ),
            ],
          ),
          onTap: () {
            // TODO: Buka halaman edit detail masing-masing
          },
        ),
        const Divider(height: 1),
      ],
    );
  }
}
