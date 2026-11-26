import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart'; // Import file main kamu untuk mengarah ke WorkbenchSAI

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Berpindah ke halaman utama setelah 3 detik
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const WorkbenchSAI()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // 1. Dekorasi Background Lingkaran (Kanan Atas)
          Positioned(
            top: -50,
            right: -50,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.blueAccent.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
            ),
          ),

          // 2. Konten Utama
          SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: constraints.maxHeight),
                    child: IntrinsicHeight(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  // Barisan Logo (Kurikulum Merdeka & Logo Sekolah)
                  Row(
                    children: [
                      // Ganti dengan Image.asset jika sudah ada filenya
                      Image.asset(
                        'assets/logokm.png', 
                        height: 45, // Tinggi 45 adalah ukuran ideal untuk header splash
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) => const Icon(Icons.school, size: 40),
                      ),
                      const SizedBox(width: 15),  
                      Image.asset(
                        'assets/logounmul.png',
                        height: 45,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) => const Icon(Icons.verified_user, size: 40),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  
                  // Judul Modul
                  const Text(
                    "MODUL AJAR",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900, letterSpacing: 1.2),
                  ),
                  const Text(
                    "TEKNIK KOMPUTER DAN\nJARINGAN",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900, height: 1.2),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Materi\nSistem Administrasi Jaringan",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "SMK KELAS XI\nTeknik Jaringan dan Telekomunikasi",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),

                  const Spacer(),
                  
                  // 3. Ilustrasi Jaringan (Tengah)
                  Center(
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          // Pastikan file cover.jpg sudah didaftarkan di pubspec.yaml
                          image: AssetImage("assets/cover.jpg"), 
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),

                  const Spacer(),

                  // 4. Identitas Penyusun (Bawah)
                  const Text(
                    "Disusun Oleh:",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const Text(
                    "Muh. Dwiky Reza",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          
          // 5. Dekorasi Gelombang Bawah (Opsional)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: 0.3,
              child: Image.asset("bottom_wave.png", fit: BoxFit.cover, height: 60, errorBuilder: (c, e, s) => const SizedBox()),
            ),
          ),
        ],
      ),
    );
  }
}