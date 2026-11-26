class QuizData {
  // Menyimpan daftar soal berdasarkan index bab (0 = Bab 1, 1 = Bab 2, 2 = Bab 3, 3 = Bab 4)
  static final Map<int, List<Map<String, dynamic>>> soalKuis = {
    // BAB 1: Sistem Operasi Jaringan
    0: [
      {
        "question": "Apa pengertian sistem operasi berdasarkan materi Bab 1?",
        "options": [
          "Program yang mengendalikan semua fungsi pada komputer dan menjadi landasan pengembangan aplikasi",
          "Perangkat keras yang menghubungkan komputer dengan kabel jaringan",
          "Aplikasi pengolah kata yang berjalan di atas browser",
          "Layanan untuk membagikan printer secara nirkabel saja",
        ],
        "correctIndex": 0,
        "hint":
            "Sistem operasi merupakan program yang mengendalikan semua fungsi pada komputer dan menjadi basis landasan pengembangan aplikasi untuk user.",
      },
      {
        "question":
            "Berikut ini yang BUKAN termasuk empat fungsi utama sistem operasi adalah...",
        "options": [
          "Manajemen perangkat keras",
          "Manajemen file dan folder",
          "Manajemen interaksi user",
          "Manajemen perakitan kabel UTP",
        ],
        "correctIndex": 3,
        "hint":
            "Empat fungsi sistem operasi adalah manajemen perangkat keras, manajemen file dan folder, manajemen interaksi user, dan manajemen aplikasi.",
      },
      {
        "question":
            "Fungsi sistem operasi yang berperan mengendalikan akses terhadap berbagai perangkat keras yang terhubung ke komputer disebut...",
        "options": [
          "Manajemen aplikasi",
          "Manajemen perangkat keras",
          "Manajemen file dan folder",
          "Manajemen interaksi user",
        ],
        "correctIndex": 1,
        "hint":
            "Pengendalian akses terhadap berbagai perangkat keras yang terhubung ke komputer merupakan fungsi manajemen perangkat keras.",
      },
      {
        "question":
            "Dalam sistem operasi, apa fungsi dari penyediaan user interface?",
        "options": [
          "Sebagai jembatan antara user dengan perangkat keras komputer",
          "Untuk menghapus file dan folder secara otomatis",
          "Untuk menggandakan partisi harddisk tanpa sistem operasi",
          "Untuk mengonversi alamat IP menjadi nama domain",
        ],
        "correctIndex": 0,
        "hint":
            "User interface disediakan sebagai jembatan antara user dengan perangkat keras komputer (manajemen interaksi user).",
      },
      {
        "question":
            "Mengapa sistem operasi memiliki peranan penting dalam perkembangan teknologi informasi?",
        "options": [
          "Karena semua komputer tidak memerlukan perangkat keras",
          "Karena hampir semua aplikasi yang dikembangkan berjalan di atas sistem operasi",
          "Karena sistem operasi hanya digunakan untuk bermain game",
          "Karena sistem operasi menggantikan fungsi listrik pada komputer",
        ],
        "correctIndex": 1,
        "hint":
            "Hampir semua aplikasi yang dikembangkan saat ini berjalan di atas sistem operasi.",
      },
    ],

    // BAB 2: Instalasi Sistem Operasi
    1: [
      {
        "question":
            "Aplikasi virtualisasi yang digunakan untuk simulasi instalasi sistem operasi jaringan Debian 12 pada materi Bab 2 adalah...",
        "options": ["Docker", "VirtualBox", "Wireshark", "PuTTY"],
        "correctIndex": 1,
        "hint":
            "Pada Bab 2, aplikasi yang dipersiapkan untuk simulasi instalasi sistem operasi jaringan adalah VirtualBox.",
      },
      {
        "question":
            "File ISO Debian 12 dengan nama akhiran '...amd64.iso' dikhususkan untuk arsitektur prosesor...",
        "options": ["16-bit", "32-bit", "64-bit", "ARM saja"],
        "correctIndex": 2,
        "hint":
            "File '...amd64.iso' dikhususkan untuk arsitektur 64-bit, sedangkan '...i386.iso' untuk arsitektur 32-bit.",
      },
      {
        "question":
            "Pada konfigurasi network adapter di VirtualBox, adapter kedua yang digunakan untuk kebutuhan akses internet secara langsung adalah...",
        "options": [
          "Internal Network saja",
          "Bridged Adapter atau NAT",
          "Loopback Adapter",
          "Serial Port",
        ],
        "correctIndex": 1,
        "hint":
            "Adapter pertama memakai virtual host adapter untuk isolasi jaringan virtual, sedangkan adapter kedua memakai Bridged Adapter atau NAT untuk akses internet.",
      },
      {
        "question":
            "Saat memilih metode partisi 'Guided - use entire disk' pada instalasi Debian 12, partisi apa saja yang dibuat secara otomatis?",
        "options": [
          "Partisi root (/) dan swap",
          "Partisi NTFS dan FAT32",
          "Partisi recovery dan OEM",
          "Partisi cache dan temporary saja",
        ],
        "correctIndex": 0,
        "hint":
            "Opsi 'Guided - use entire disk' secara otomatis membuat partisi yang diperlukan sistem operasi jaringan, termasuk partisi root (/) dan swap.",
      },
      {
        "question":
            "Agar Debian 12 yang terpasang hanya memiliki antarmuka baris perintah (CLI) tanpa GUI, opsi apa yang harus dihapus centangnya saat instalasi?",
        "options": [
          "GRUB boot loader",
          "Standard system utilities",
          "Debian desktop environment dan GNOME",
          "Master Boot Record (MBR)",
        ],
        "correctIndex": 2,
        "hint":
            "Menghapus centang pada Debian desktop environment dan GNOME memastikan sistem operasi hanya memiliki antarmuka CLI tanpa lingkungan desktop grafis (GUI).",
      },
    ],

    // BAB 3: Konfigurasi DHCP Server
    2: [
      {
        "question":
            "Perintah yang digunakan untuk memperbarui daftar paket repositori sebelum menginstal DHCP Server di Debian adalah...",
        "options": [
          "sudo apt update",
          "sudo apt remove",
          "sudo apt clean",
          "sudo apt purge",
        ],
        "correctIndex": 0,
        "hint":
            "Langkah pertama sebelum instalasi paket adalah memperbarui repositori dengan perintah 'sudo apt update' (atau 'sudo apt-get update').",
      },
      {
        "question":
            "File konfigurasi mana yang digunakan untuk mengatur IP statis pada interface jaringan (seperti eth0 atau enp0s3) di Debian?",
        "options": [
          "/etc/dhcp/dhcpd.conf",
          "/etc/network/interfaces",
          "/etc/samba/smb.conf",
          "/etc/apt/sources.list",
        ],
        "correctIndex": 1,
        "hint":
            "IP statis pada interface (misal eth0 atau enp0s3) diatur melalui file '/etc/network/interfaces' atau menggunakan 'nmcli'.",
      },
      {
        "question":
            "Nama paket utama yang diinstal untuk menjalankan layanan DHCP Server di Debian adalah...",
        "options": [
          "isc-dhcp-server",
          "samba-common-bin",
          "apache2",
          "bind9",
        ],
        "correctIndex": 0,
        "hint":
            "Paket utama DHCP Server di Debian diinstal menggunakan perintah 'sudo apt install isc-dhcp-server'.",
      },
      {
        "question":
            "Mengapa pesan 'failed' wajar muncul sesaat setelah instalasi paket isc-dhcp-server selesai?",
        "options": [
          "Karena file ISO Debian mengalami kerusakan",
          "Karena servis mencoba berjalan namun belum dikonfigurasi",
          "Karena RAM komputer tidak mencukupi",
          "Karena interface jaringan harus dihapus terlebih dahulu",
        ],
        "correctIndex": 1,
        "hint":
            "Munculnya pesan 'failed' saat instalasi selesai adalah hal wajar karena servis mencoba berjalan padahal file konfigurasinya belum diatur.",
      },
      {
        "question":
            "Di mana letak file konfigurasi DHCP untuk mengatur parameter jaringan seperti subnet?",
        "options": [
          "/etc/network/interfaces",
          "/etc/dhcp/dhcpd.conf",
          "/srv/samba/shared",
          "/dev/sda",
        ],
        "correctIndex": 1,
        "hint":
            "File konfigurasi DHCP Server yang berisi pengaturan seperti subnet terletak di '/etc/dhcp/dhcpd.conf'.",
      },
    ],

    // BAB 4: Samba Server
    3: [
      {
        "question":
            "Protokol apa yang digunakan oleh Samba agar sistem Linux/Unix dapat berbagi file dan printer dengan Windows?",
        "options": [
          "HTTP dan HTTPS",
          "SMB (Server Message Block) atau CIFS",
          "DHCP dan DNS",
          "SSH dan Telnet",
        ],
        "correctIndex": 1,
        "hint":
            "Samba menggunakan protokol SMB (Server Message Block) atau CIFS (Common Internet File System) untuk berbagi file dan printer lintas sistem.",
      },
      {
        "question":
            "Perintah yang tepat untuk menginstal Samba Server beserta utilitas pendukungnya di Debian adalah...",
        "options": [
          "sudo apt install isc-dhcp-server -y",
          "sudo apt install samba samba-common-bin -y",
          "sudo systemctl enable smbd nmbd",
          "sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bak",
        ],
        "correctIndex": 1,
        "hint":
            "Paket utama Samba Server dan utilitas pendukungnya diinstal dengan perintah 'sudo apt install samba samba-common-bin -y'.",
      },
      {
        "question":
            "Pada konfigurasi '/etc/samba/smb.conf', apa fungsi dari parameter 'guest ok = yes'?",
        "options": [
          "Menyembunyikan folder dari File Explorer",
          "Mengizinkan klien mengakses folder tanpa autentikasi (tanpa password)",
          "Membatasi folder hanya bisa dibaca saja",
          "Menentukan lokasi direktori di server",
        ],
        "correctIndex": 1,
        "hint":
            "Parameter 'guest ok = yes' mengizinkan klien mengakses folder berbagi tanpa autentikasi (tanpa password).",
      },
      {
        "question":
            "Perintah apa yang digunakan untuk memverifikasi apakah ada kesalahan penulisan pada file konfigurasi 'smb.conf' sebelum me-restart layanan?",
        "options": ["net view", "testparm", "ping", "chmod"],
        "correctIndex": 1,
        "hint":
            "Utilitas 'testparm' digunakan untuk memeriksa sintaks dan memastikan tidak ada kesalahan konfigurasi pada file 'smb.conf'.",
      },
      {
        "question":
            "Bagaimana cara mengakses folder berbagi Samba dari server ber-IP 192.168.100.1 melalui File Explorer di klien Windows?",
        "options": [
          "Mengetikkan http://192.168.100.1 di browser",
          "Mengetikkan \\\\192.168.100.1 pada kolom alamat File Explorer",
          "Menjalankan perintah apt update di Command Prompt",
          "Mengetikkan /etc/samba/smb.conf di File Explorer",
        ],
        "correctIndex": 1,
        "hint":
            "Untuk mengakses share Samba dari File Explorer Windows, ketikkan IP server dengan format '\\\\192.168.100.1' lalu tekan Enter.",
      },
    ],
  };

  // Mengambil soal berdasarkan index bab
  static List<Map<String, dynamic>> getSoalByBab(int index) {
    if (soalKuis.containsKey(index)) {
      return soalKuis[index]!;
    }
    // Soal default jika bab tidak memiliki soal spesifik
    return [
      {
        "question": "Soal Default: Apa kepanjangan dari LAN?",
        "options": [
          "Local Area Network",
          "Long Area Network",
          "Local Area Name",
          "Logical Area Network",
        ],
        "correctIndex": 0,
        "hint":
            "LAN adalah jaringan komputer yang mencakup wilayah kecil, seperti satu ruangan atau gedung.",
      },
    ];
  }

  // Mendapatkan daftar bab yang memiliki kuis
  static List<int> getAvailableBabIndices() {
    return soalKuis.keys.toList()..sort();
  }

  // Format penamaan bab
  static String getBabName(int index) {
    return "Bab ${index + 1}";
  }
}
