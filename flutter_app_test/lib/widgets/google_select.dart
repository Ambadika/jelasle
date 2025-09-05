import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAccountBox extends StatelessWidget {
  final GoogleSignInAccount user;
  final VoidCallback? onLogout;

  const GoogleAccountBox({super.key, required this.user, this.onLogout});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: user.photoUrl != null
                  ? NetworkImage(user.photoUrl!)
                  : null,
              radius: 28,
              child: user.photoUrl == null
                  ? const Icon(Icons.person, size: 30)
                  : null,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user.displayName ?? "Tanpa Nama",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(user.email, style: TextStyle(color: Colors.grey[700])),
                ],
              ),
            ),
            if (onLogout != null)
              IconButton(
                icon: const Icon(Icons.logout, color: Colors.red),
                onPressed: onLogout,
              ),
          ],
        ),
      ),
    );
  }
}
