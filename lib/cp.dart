import 'package:flutter/material.dart';

class CPPage extends StatelessWidget {
  const CPPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Warna tema disamakan dengan nuansa biru di main.dart
    const Color primaryColor = Color.fromARGB(255, 27, 142, 219);

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "Capaian Pembelajaran",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderSection(primaryColor),
            const SizedBox(height: 25),
            
            // Contoh Section 1: CP Umum
            _buildCPCard(
              "Capaian Umum",
              "Pada akhir fase F (kelas XI dan XII), peserta didik akan mampu menginstalasi, mengonfigurasi, memonitoring, dan memecahkan masalah pada sistem administrasi jaringan.",
              Icons.stars_rounded,
              primaryColor,
            ),
            
            const SizedBox(height: 15),

            // Contoh Section 2: Elemen Kompetensi
            _buildCPCard(
              "Elemen: Instalasi OS",
              "Peserta didik mampu melakukan instalasi sistem operasi jaringan  CLI sesuai dengan kebutuhan spesifikasi perangkat.",
              Icons.settings_suggest_rounded,
              primaryColor,
            ),

            const SizedBox(height: 15),

            _buildCPCard(
              "Elemen: Layanan Jaringan",
              "Peserta didik mampu mengonfigurasi dan menguji layanan jaringan seperti DHCP Server, DNS Server, Web Server, dan Samba Server.",
              Icons.dns_rounded,
              primaryColor,
            ),

            const SizedBox(height: 30),
            
            // Footer Info
            const Center(
              child: Text(
                "Kurikulum Merdeka - TJKT 2024",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSection(Color color) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          Icon(Icons.info_outline, color: color, size: 40),
          const SizedBox(width: 15),
          const Expanded(
            child: Text(
              "Informasi mengenai target kompetensi yang harus dicapai oleh siswa.",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCPCard(String title, String content, IconData icon, Color color) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Card
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Row(
              children: [
                Icon(icon, color: Colors.white, size: 20),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          // Isi Card
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              content,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 15,
                height: 1.5,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}