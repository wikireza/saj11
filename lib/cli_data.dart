// lib/cli_data.dart

class Question {
  final String soal;
  final List<String> kunci;
  final String penjelasan;

  Question({
    required this.soal,
    required this.kunci,
    required this.penjelasan,
  });
}

final List<Question> listQuestions = [
  Question(
    soal: "1. Instal paket DHCP Server di Debian.",
    kunci: ["apt install isc-dhcp-server", "apt-get install isc-dhcp-server", "sudo apt install isc-dhcp-server", "sudo apt-get install isc-dhcp-server"],
    penjelasan: "Perintah 'apt install' atau 'apt-get install' digunakan untuk memasang paket dari repository. 'isc-dhcp-server' adalah paket standar untuk layanan DHCP.",
  ),
  Question(
    soal: "2. Cek status layanan DHCP Server.",
    kunci: ["systemctl status isc-dhcp-server", "service isc-dhcp-server status"],
    penjelasan: "'systemctl status' atau 'service status' berfungsi untuk melihat apakah layanan sedang berjalan (active), mati, atau mengalami error konfigurasi.",
  ),
  Question(
    soal: "3. Edit file konfigurasi interface DHCP.",
    kunci: ["nano /etc/default/isc-dhcp-server", "pico /etc/default/isc-dhcp-server"],
    penjelasan: "File ini digunakan untuk menentukan kartu jaringan (interface) mana yang akan bertugas menyebarkan IP ke perangkat client.",
  ),
  Question(
    soal: "4. Konfigurasi alamat IP statis untuk server.",
    kunci: ["nano /etc/network/interfaces", "pico /etc/network/interfaces"],
    penjelasan: "File 'interfaces' adalah pusat pengaturan alamat IP, netmask, dan gateway secara manual di sistem operasi Debian.",
  ),
  Question(
    soal: "5. Restart layanan networking.",
    kunci: ["systemctl restart networking", "/etc/init.d/networking restart", "service networking restart"],
    penjelasan: "Perintah ini wajib dijalankan agar perubahan pada file konfigurasi jaringan segera diterapkan tanpa harus melakukan reboot pada server.",
  ),
  // === BAB 4: Samba Server ===
  Question(
    soal: "6. Instal paket Samba Server beserta utilitas pendukungnya di Debian.",
    kunci: [
      "sudo apt install samba samba-common-bin -y",
      "sudo apt install samba samba-common-bin",
      "apt install samba samba-common-bin -y",
      "apt install samba samba-common-bin",
      "sudo apt-get install samba samba-common-bin -y",
      "apt-get install samba samba-common-bin",
      "sudo apt install samba -y",
      "sudo apt install samba",
      "apt install samba -y",
      "apt install samba",
    ],
    penjelasan: "Perintah 'apt install samba samba-common-bin' digunakan untuk memasang layanan utama Samba Server beserta utilitas pendukung seperti 'testparm'.",
  ),
  Question(
    soal: "7. Buka file konfigurasi utama Samba (smb.conf) dengan editor nano.",
    kunci: [
      "sudo nano /etc/samba/smb.conf",
      "nano /etc/samba/smb.conf",
      "sudo pico /etc/samba/smb.conf",
      "pico /etc/samba/smb.conf",
    ],
    penjelasan: "File '/etc/samba/smb.conf' adalah pusat konfigurasi Samba untuk menentukan pengaturan global dan folder apa saja yang akan dibagikan ke jaringan.",
  ),
  Question(
    soal: "8. Buat direktori share Samba di /srv/samba/shared.",
    kunci: [
      "sudo mkdir -p /srv/samba/shared",
      "mkdir -p /srv/samba/shared",
      "sudo mkdir /srv/samba/shared",
      "mkdir /srv/samba/shared",
    ],
    penjelasan: "Perintah 'mkdir -p /srv/samba/shared' membuat folder tujuan yang akan dibagikan oleh Samba, sekaligus membuat folder induknya jika belum ada.",
  ),
  Question(
    soal: "9. Verifikasi sintaks dan konfigurasi file smb.conf.",
    kunci: [
      "testparm",
      "sudo testparm",
    ],
    penjelasan: "Utilitas 'testparm' memeriksa apakah ada kesalahan penulisan atau parameter yang keliru di dalam file '/etc/samba/smb.conf' sebelum layanan dijalankan ulang.",
  ),
  Question(
    soal: "10. Restart layanan Samba (smbd dan nmbd) agar konfigurasi baru diterapkan.",
    kunci: [
      "sudo systemctl restart smbd nmbd",
      "systemctl restart smbd nmbd",
      "sudo systemctl restart smbd",
      "systemctl restart smbd",
      "sudo service smbd restart",
      "service smbd restart",
    ],
    penjelasan: "Layanan 'smbd' menangani berbagi file/printer dan 'nmbd' menangani resolusi nama NetBIOS. Keduanya perlu di-restart setiap kali 'smb.conf' diubah.",
  ),
];