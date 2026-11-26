import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Penulis'),
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(20.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight - 40.0,
              ),
              child: IntrinsicHeight(
                child: Column(
          children: [
            Center(
              child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[300], // Warna cadangan jika foto gagal
              child: ClipOval(
                child: Image.asset(
                  'assets/aku.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    // Jika foto gagal dimuat, tampilkan ikon orang
                    return const Icon(Icons.person, size: 50, color: Colors.grey);
                  },
                ),
              ),
              ),
            ),
            const SizedBox(height: 20),
            const Card(
              child: ListTile(
                leading: Icon(Icons.badge),
                title: Text('Nama'),
                subtitle: Text('Muhammad Dwiky Reza'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.school),
                title: Text('Instansi'),
                subtitle: Text(
                  'Universitas Mulawarman\nPendidikan Komputer 2020',
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () => Navigator.pop(context),
              child: const Text('Kembali ke Dashboard'),
            ),
          ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
