import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        "name": "Osprey Aether 70 Liter",
        "price": "Rp2.000.000,00",
        "image": "assets/image/osprey.jpg", // TODO
        "rating": 4.9,
        "sold": "100+ Terjual",
      },
      {
        "name": "Kaos Distro",
        "price": "Rp250.000,00",
        "image": "assets/image/kaos.jpg", // TODO
        "rating": 4.8,
        "sold": "50+ Terjual",
      },
      {
        "name": "Adidas Samba OG",
        "price": "Rp1.500.000,00",
        "image": "assets/image/adidas.jpg", // TODO
        "rating": 4.9,
        "sold": "300+ Terjual",
      },
      {
        "name": "Wajan Teflon",
        "price": "Rp170.000,00",
        "image": "assets/image/wajan.jpg", // TODO
        "rating": 4.7,
        "sold": "30+ Terjual",
      },
      {
        "name": "iPhone 13 128GB",
        "price": "Rp12.000.000,00",
        "image": "assets/image/iphone.jpg", // TODO
        "rating": 4.9,
        "sold": "200+ Terjual",
      },
      {
        "name": "Kipas Angin Mini",
        "price": "Rp80.000,00",
        "image": "assets/image/kipas.jpg", // TODO
        "rating": 4.6,
        "sold": "70+ Terjual",
      },
      // TODO: Tambahkan produk lain di sini
    ];

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              const SizedBox(width: 8),
              Image.asset(
                "assets/image/search.png",
                width: 20,
                height: 20,
              ), // TODO
              const SizedBox(width: 8),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search...",
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/image/cart.png",
              width: 24,
              height: 24,
            ), // TODO
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/image/comment.png",
              width: 24,
              height: 24,
            ), // TODO
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.68,
          ),
          itemBuilder: (context, index) {
            final product = products[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 6,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      child: Image.asset(
                        product["image"],
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product["name"],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          product["price"],
                          style: const TextStyle(
                            color: Colors.teal,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.orange,
                            ),
                            const SizedBox(width: 2),
                            Text("${product["rating"]}"),
                            const SizedBox(width: 6),
                            Text(
                              product["sold"],
                              style: const TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/image/omah.png",
              width: 24,
              height: 24,
            ), // TODO
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/image/bell.png",
              width: 24,
              height: 24,
            ), // TODO
            label: 'Notifikasi',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/image/users.png",
              width: 24,
              height: 24,
            ), // TODO
            label: 'Saya',
          ),
        ],
      ),
    );
  }
}
