import 'pg_data.dart';

final Map<String, String> kamusSaj = {
  "user interface":
      "Tampilan visual yang menghubungkan pengguna dengan sistem komputer.",
  "VirtualBox":
      "VirtualBox adalah perangkat lunak virtualisasi /iopen-source/i (gratis) yang dikembangkan oleh /iOracle/i untuk membuat dan menjalankan sistem operasi /i(OS)/i tambahanâ€”disebut /ivirtual machine (VM)/iâ€”di dalam komputer utama /i(host)/i. Ini memungkinkan murid menjalankan /iWindows, Linux,/i atau /imacOS/i secara bersamaan tanpa /idual boot/i",
  "Hyper-V": "Fitur virtualisasi bawaan Windows untuk membuat mesin virtual.",
  "ISO":
      "Format file arsip yang berisi salinan identik dari data pada cakram optik.",
  "Hyper-V, VT-x, AMD-V, SVM":
      "Adalah teknologi inti untuk virtualisasi perangkat keras yang memungkinkan satu komputer menjalankan beberapa sistem operasi atau emulator (seperti /iAndroid/i) secara bersamaan. /iIntel VT-x/i dan /iAMD-V/SVM/i adalah fitur /iCPU/i untuk virtualisasi, sementara /iHyper-V/i adalah platform /ihypervisor/i dari /iMicrosoft/i yang membutuhkannya.",
  // === BAB 2: Instalasi Sistem Operasi ===
  "browser":
      "Perangkat lunak yang digunakan untuk mengakses dan menjelajahi halaman web di internet, seperti /iGoogle Chrome/i, /iFirefox/i, atau /iMicrosoft Edge/i.",
  "ISO DVD Debian 12":
      "File image /iISO/i instalasi resmi sistem operasi /iDebian 12/i yang diunduh dari situs resmi /idebian.org/i dan digunakan sebagai media instalasi di /iVirtualBox/i.",
  "64-bit":
      "Arsitektur prosesor modern yang mampu memproses data 64 bit sekaligus. File /iISO/i berlabel /iamd64/i ditujukan untuk prosesor jenis ini, baik /iIntel/i maupun /iAMD/i.",
  "distribution OS":
      "Versi distribusi sistem operasi Linux yang dikemas lengkap dengan kernel, perangkat lunak, dan konfigurasi tertentu. Contohnya /iDebian/i, /iUbuntu/i, dan /iFedora/i.",
  "virtual network":
      "Jaringan yang dibuat secara virtual di dalam perangkat lunak virtualisasi seperti /iVirtualBox/i, memungkinkan beberapa mesin virtual saling terhubung tanpa perangkat keras jaringan fisik.",
  "virtual host adapter":
      "Adapter jaringan virtual di /iVirtualBox/i yang menghubungkan /iVM/i ke jaringan khusus antara /ihost/i dan /iVM/i tanpa akses ke jaringan luar. Cocok untuk simulasi jaringan yang terisolasi.",
  "Bridged Adapter":
      "Mode jaringan di /iVirtualBox/i di mana /iVM/i langsung terhubung ke jaringan fisik /ihost/i, sehingga /iVM/i mendapat IP dari /irouter/i atau /iDHCP server/i yang sama dengan komputer fisik.",
  "NAT":
      "/iNetwork Address Translation/i — Mode jaringan default di /iVirtualBox/i yang memungkinkan /iVM/i mengakses internet melalui koneksi /ihost/i, namun /iVM/i tidak dapat diakses langsung dari luar.",
  "graphical install":
      "Opsi instalasi /iDebian/i yang menggunakan antarmuka grafis berbasis mouse untuk memudahkan proses konfigurasi selama instalasi. Berbeda dengan /iinstall/i yang berbasis /iCLI/i murni.",
  "CLI":
      "/iCommand Line Interface/i — Antarmuka berbasis teks di mana pengguna memberikan perintah melalui ketikan teks di terminal. Digunakan di /iDebian/i tanpa /iGUI/i untuk efisiensi dan kecepatan.",
  "GUI":
      "/iGraphical User Interface/i — Antarmuka pengguna berbasis grafis dengan ikon, tombol, dan jendela yang dapat diklik. Contohnya /iGNOME/i dan /iKDE/i pada sistem operasi Linux.",
  "hostname":
      "Nama unik yang diberikan pada sebuah komputer atau /iVM/i di dalam jaringan untuk membedakannya dari perangkat lain. Contoh: /iserverdebian/i atau /idebianvm/i.",
  "administrator (root)":
      "Akun pengguna dengan hak akses tertinggi pada sistem operasi Linux. Akun /iroot/i dapat mengubah, menghapus, dan mengatur seluruh file dan layanan di sistem.",
  "new user":
      "Akun pengguna biasa yang dibuat selama proses instalasi /iDebian/i. Berbeda dengan /iroot/i, akun ini memiliki hak akses terbatas demi keamanan sistem.",
  "timezone":
      "Pengaturan zona waktu pada sistem operasi untuk memastikan jam sistem sesuai dengan lokasi geografis. Di Indonesia umumnya menggunakan /iAsia/Jakarta/i (WIB).",
  "Guided - use entire disk":
      "Opsi partisi otomatis saat instalasi /iDebian/i yang menggunakan seluruh kapasitas disk virtual untuk membuat partisi /iroot/i (/) dan /iswap/i secara otomatis.",
  "swap":
      "Partisi atau ruang disk yang digunakan sebagai memori tambahan saat /iRAM/i sudah penuh. Berfungsi seperti /ivirtual memory/i pada sistem operasi Linux.",
  "GRUB":
      "/iGrand Unified Bootloader/i — Program boot loader yang mengelola proses booting sistem operasi Linux. /iGRUB/i dipasang di /iMBR/i disk untuk memungkinkan sistem memulai /iDebian/i.",
  "MBR":
      "/iMaster Boot Record/i — Sektor pertama pada disk yang berisi informasi partisi dan kode boot loader. /iGRUB/i dipasang di /iMBR/i agar /iDebian/i bisa dinyalakan saat /iVM/i dihidupkan.",
  "enp0s3":
      "Nama antarmuka jaringan pertama pada /iDebian/i berbasis /isystemd/i. Merupakan adapter /iHost-Only/i atau /iBridged/i yang dikonfigurasi sebagai jaringan utama /iVM/i.",
  "eth0":
      "Nama lama antarmuka jaringan utama pada sistem Linux. Pada /iDebian 12/i biasanya sudah digantikan oleh penamaan /ienp0s3/i atau sejenisnya.",
  "primary network interface":
      "Antarmuka jaringan utama yang dipilih selama instalasi /iDebian/i untuk mengelola koneksi jaringan sistem. Biasanya dipilih dari adapter /iHost-Only/i agar terisolasi.",
  "default route":
      "Jalur jaringan bawaan yang digunakan sistem untuk mengirim paket ke tujuan yang tidak diketahui rute spesifiknya, biasanya mengarah ke /igateway/i atau /irouter/i.",
  "Unattended installation":
      "Opsi di /iVirtualBox/i untuk melakukan instalasi sistem operasi secara otomatis tanpa interaksi pengguna. Dapat di-/iuncheck/i jika ingin mengkonfigurasi sistem secara manual.",
  "RAM":
      "/iRandom Access Memory/i — Memori utama komputer yang digunakan untuk menyimpan data sementara selama sistem berjalan. Pada /iVirtualBox/i, /iRAM/i dialokasikan dari /ihost/i ke /iVM/i.",
  "CPU":
      "/iCentral Processing Unit/i — Prosesor utama komputer yang menjalankan instruksi program. Pada /iVirtualBox/i, jumlah inti /iCPU/i yang diberikan ke /iVM/i dapat diatur sesuai kebutuhan.",
  "Virtual hardware":
      "Komponen perangkat keras yang disimulasikan oleh /iVirtualBox/i untuk /iVM/i, seperti /iRAM/i virtual, /iCPU/i virtual, kartu jaringan virtual, dan disk virtual.",
  "dual boot":
      "Konfigurasi komputer yang memiliki dua sistem operasi berbeda yang terinstal, di mana pengguna memilih salah satu saat booting. Berbeda dengan virtualisasi yang menjalankan keduanya secara bersamaan.",
  "GNOME":
      "/iGNU Network Object Model Environment/i — Lingkungan desktop grafis (/iGUI/i) populer untuk Linux. Saat instalasi /iDebian/i sebagai server, opsi /iGNOME/i sebaiknya tidak dipilih agar sistem lebih ringan.",
  "environment":
      "Lingkungan tampilan sistem operasi yang menentukan apakah sistem menggunakan antarmuka grafis (/iGUI/i) atau hanya baris perintah (/iCLI/i).",

  // === BAB 4: Samba Server ===
  "Samba":
      "Perangkat lunak /iopen-source/i yang memungkinkan sistem Linux/Unix berbagi file dan printer dengan perangkat Windows menggunakan protokol /iSMB/i. Dikembangkan oleh /iAndrew Tridgell/i sejak 1992.",
  "SMB (Server Message Block)":
      "Protokol jaringan buatan /iMicrosoft/i untuk berbagi file, printer, dan sumber daya lain antar komputer dalam jaringan. Versi modernnya disebut /iSMB2/i dan /iSMB3/i.",
  "CIFS (Common Internet File System)":
      "Versi publik dari protokol /iSMB/i yang distandarisasi oleh /iIETF/i. Digunakan oleh /iSamba/i untuk komunikasi lintas platform antara Linux dan Windows.",
  "File Server":
      "Komputer atau layanan dalam jaringan yang berfungsi menyimpan dan mengelola file, serta menyediakan akses bersama ke file tersebut bagi pengguna atau perangkat lain di jaringan.",
  "Print Server":
      "Komputer atau perangkat dalam jaringan yang mengelola dan mendistribusikan permintaan cetak dari beberapa klien ke satu atau lebih printer yang terhubung.",
  "Domain Controller":
      "Server yang mengelola autentikasi dan otorisasi semua pengguna dan komputer dalam suatu domain jaringan. Pada Windows menggunakan /iActive Directory/i, pada Linux bisa menggunakan /iSamba/i.",
  "Active Directory":
      "Layanan direktori dari /iMicrosoft/i yang digunakan untuk mengelola identitas pengguna, perangkat, dan kebijakan keamanan dalam jaringan berbasis domain Windows.",
  "smbd":
      "Proses daemon utama Samba (/iSamba Daemon/i) yang menangani layanan berbagi file dan printer menggunakan protokol /iSMB/CIFS/i. Berjalan di background sebagai layanan sistem.",
  "nmbd":
      "Daemon Samba yang menangani resolusi nama /iNetBIOS/i dan layanan browsing jaringan Windows, memungkinkan komputer Linux terlihat di /iNetwork Neighborhood/i Windows.",
  "smb.conf":
      "File konfigurasi utama Samba yang terletak di /i/etc/samba/smb.conf/i. Berisi pengaturan global server dan definisi setiap folder atau printer yang dibagikan ke jaringan.",
  "testparm":
      "Utilitas bawaan Samba untuk memverifikasi sintaks dan konfigurasi file /ismb.conf/i. Menampilkan peringatan jika ada parameter yang salah sebelum layanan di-restart.",
  "systemctl enable":
      "Perintah systemd untuk mendaftarkan layanan agar otomatis berjalan saat sistem booting. Berbeda dengan /isystemctl start/i yang hanya menjalankan layanan sementara.",
  "apt update":
      "Perintah pada sistem berbasis Debian/Ubuntu untuk memperbarui daftar paket yang tersedia dari repositori, tanpa mengubah paket yang sudah terinstal.",
  "apt upgrade":
      "Perintah untuk mengupgrade semua paket terinstal ke versi terbaru berdasarkan daftar yang sudah diperbarui oleh /iapt update/i.",
  "nano":
      "Editor teks berbasis /iCLI/i yang ringan dan mudah digunakan di terminal Linux. Cocok untuk mengedit file konfigurasi seperti /ismb.conf/i.",
  "File Explorer":
      "Aplikasi pengelola file bawaan Windows untuk menjelajahi file, folder, dan sumber daya jaringan termasuk share folder Samba.",
  "Command Prompt":
      "Antarmuka baris perintah bawaan Windows (/iCLI/i) untuk menjalankan perintah sistem dan mengakses sumber daya jaringan seperti share folder Samba.",
  "net view":
      "Perintah Windows di /iCommand Prompt/i untuk menampilkan daftar sumber daya jaringan yang dibagikan oleh suatu komputer atau server di jaringan.",
  "open-source":
      "Perangkat lunak yang kode sumbernya terbuka dan bebas digunakan, dipelajari, dimodifikasi, maupun didistribusikan oleh siapa saja.",
  "samba-common-bin":
      "Paket pendukung Samba di Debian/Ubuntu yang berisi berbagai utilitas administrasi, termasuk perintah /itestparm/i untuk memeriksa konfigurasi.",
  "/etc/samba/smb.conf":
      "Lokasi path standar file konfigurasi utama layanan Samba pada sistem operasi Linux.",
  "browseable":
      "Parameter pada /ismb.conf/i untuk menentukan apakah folder yang dibagikan akan terlihat saat pengguna menelusuri jaringan (nilai /iyes/i atau /ino/i).",
  "read only":
      "Parameter pada /ismb.conf/i untuk mengatur apakah pengguna hanya dapat membaca file tanpa bisa mengubah atau menghapusnya (nilai /iyes/i atau /ino/i).",
  "guest ok":
      "Parameter pada /ismb.conf/i yang mengizinkan akses ke folder bersama tanpa memerlukan username dan password (akses tamu).",
  "nobody":
      "Akun pengguna bawaan Linux dengan hak akses paling terbatas, sering digunakan sebagai pemilik folder berbagi Samba untuk akses tamu (/iguest/i).",
};

final Map<int, Map<String, dynamic>> ebookData = {
  0: {
    "isCover": true, // Penanda khusus cover
    "coverAsset": "assets/cover.png", // Jalur file a sset kamu
  },
  1: {
    "title": "Kata Pengantar",
    "hasVideo": false,
    "isHeader": true,
    "elements": [
      {
        "type": "text",
        "value":
            '''Puji syukur kami panjatkan ke hadirat Tuhan Yang Maha Esa, karena atas rahmat dan karunia-Nya, penyusunan laporan/modul mata pelajaran Sistem Administrasi Jaringan (SAJ) ini dapat terselesaikan dengan baik.

      Dalam semangat Kurikulum Merdeka, pembelajaran SAJ tidak hanya berfokus pada penguasaan teori, tetapi juga pada pengembangan kemandirian, kreativitas, dan kemampuan /iproblem-solving/i dalam mengelola infrastruktur jaringan. Materi yang disajikan dalam dokumen ini dirancang untuk membekali siswa dengan keterampilan praktis dalam mengonfigurasi, memelihara, dan mengamankan sistem operasi jaringan serta layanan server yang relevan dengan kebutuhan industri saat ini.

      Penyusun menyadari bahwa dinamika teknologi informasi berkembang sangat pesat. Oleh karena itu, laporan ini disusun sebagai langkah awal untuk memicu rasa ingin tahu /i(curiosity)/i dan kemampuan belajar sepanjang hayat /i(lifelong learning)/i. Kami berharap materi ini dapat menjadi referensi yang bermanfaat dalam memahami kompleksitas administrasi jaringan, mulai dari manajemen user, konfigurasi /iDNS/i, /iWeb Server/i, hingga aspek keamanan sistem.

      Ucapan terima kasih kami sampaikan kepada guru pembimbing, rekan sejawat, dan semua pihak yang telah membantu dalam proses praktikum dan penyusunan laporan ini. Kritik dan saran yang membangun sangat kami harapkan guna penyempurnaan di masa mendatang.

      Semoga karya ini dapat memberikan kontribusi positif bagi kemajuan pendidikan vokasi di Indonesia.''',
      },
    ],
  },

  2: {
    "title": "PEMAHAMAN BERMAKNA",
    "isHeader": true,
    "elements": [
      {
        "type": "text",
        "value":
            "Melalui pembelajaran yang kolaboratif, peserta didik dapat memahami:",
      },
      {
        "type": "text",
        "value":
            "1. Konsep dasar sistem operasi jaringan dan fungsinya dalam infrastruktur TI.",
      },
      {
        "type": "text",
        "value":
            "2. Instalasi sistem operasi jaringan menggunakan aplikasi /iVirtualBox./i",
      },
      {
        "type": "text",
        "value": "3. Konfigurasi dasar layanan jaringan pada sistem operasi.",
      }, // Contoh pengganti duplikat
      {"type": "text", "value": "4. Instalasi dan konfigurasi /iDNS Server/i."},
    ],
  },

  3: {
    // Halaman 4
    "title": "BAB 1: Sistem Operasi Jaringan",
    "isHeader": true,
    "elements": [
      {"type": "image", "value": "assets/sistem_jaringan.png"},
      {
        "type": "text",
        "value":
            '''Sistem operasi memiliki peranan penting saat ini dalam mendukung perkembangan
        teknologi informasi. Ini karena hampir semua aplikasi yang dikembangkan saat ini berjalan
        diatas diatas sistem operasi. Sistem operasi merupakan sebuah program yang
        mengendalikan semua fungsi yang ada pada komputer. Sistem operasi menjadi basis
        landasan pengembangan aplikasi untuk user.\n Secara umum semua sistem operasi memiliki mpat fungsi berikut.
        - Pengendalian akses terhadap berbagai perangkat keras yang terhubung ke komputer.
(Manajemen perangkat keras)
        - Pengelolaan file dan folder (Manajemen file dan folder)
        - Penyediaan /iuser interface/i sebagai jembatan antar user dengan perangkat keras
        komputer (Manajemen interaksi user)
        Pengelolaan aplikasi /iuser/i (Manajemen aplikasi)''',
      },
    ],
  },

  4: {
    "title": "BAB 2: Instalasi Sistem Operasi",
    "isHeader": true,
    "elements": [
      {
        "type": "video_asset",
        "value": "assets/videos/down1.mp4",
        "isAsset": true,
      },
      {
        "type": "h2",
        "value": "Persiapan Instalasi Sistem Operasi Linux Debian 12",
      },
      {
        "type": "text",
        "value": "Berikut  langkah instalasi Sistem Operasi Debian",
      },
      {
        "type": "text",
        "value":
            "1. Mempersiapkan aplikasi /iVirtualBox/i untuk simulasi instalasi sistem operasi jaringan. serta aktivasi pendukung Virtualisasi baik /iHyper-V, VT-x, AMD-V, SVM/i, atau lainnya sesuai dengan jenis prosesor yang digunakan.",
      },
      {
        "type": "text",
        "value":
            "2. Melalui /ibrowser/i mencari file /iISO DVD Debian 12/i versi stabil untuk Instalasi virtual berbasis /iVirtualBox/i melalui situs resmi (https://www.debian.org/distrib/) ",
      },
      {
        "type": "text",
        "value":
            "3. File instalasi Debian '... amd64.iso' dikhususkan untuk arsitektur /i64-bit/i, sedangkan '... i386.iso' untuk arsitektur 32-bit. Pastikan memilih /ifile ISO/i yang sesuai dengan jenis prosesor yang digunakan.",
      },
    ],
  },

  5: {
    "elements": [
      {
        "type": "video_asset",
        "value": "assets/videos/instal1.mp4",
        "isAsset": true,
      },
      {"type": "h2", "value": "Konfigurasi Awal /iVirtualBox/i"},
      {
        "type": "text",
        "value": "Berikut  langkah instalasi Sistem Operasi Debian",
      },
      {
        "type": "text",
        "value":
            "1. Buat mesin virtual baru di VirtualBox dengan nama 'Debian 12' atau lainnya sesuai keinginan namun cocokkan versi hingga /idistribution OS/i sesuai dengan Linux Debian 12",
      },
      {
        "type": "text",
        "value":
            "2. Untuk 'Unattended installation' digunakan untuk melewati parameter konfigurasi awal instalasi hingga proses pembuatan GRUB selesai. namun untuk saat ini bisa di /iuncheck/i saja ",
      },
      {
        "type": "text",
        "value":
            "3. Atur /iVirtual hardware/i seperti penggunaan /iRAM/i dan /iCPU/i sesuai kebutuhan minimum agar proses instalasi hingga pemakaian sistem operasi berjalan lancar",
      },
      {
        "type": "text",
        "value": "4. Simpan pengaturan yang telah dikonfigurasi tersebut",
      },
    ],
  },

  6: {
    "elements": [
      {
        "type": "video_asset",
        "value": "assets/videos/install2.mp4",
        "isAsset": true,
      },
      {"type": "h2", "value": "Konfigurasi Awal /iVirtualBox/i"},
      {
        "type": "text",
        "value":
            "1. Sebelum memulai proses, konfigurasikan Perangkat /ivirtual network/i dengan mempersiapkan 1 /ivirtual host adapter/i untuk mengisolasi jaringan virtual agar aman untuk simulasi dan komunikasi beberapa antar mesin virtual nantinya.",
      },
      {
        "type": "text",
        "value":
            "2. Untuk adapter kedua bisa memakai /iBridged Adapter/i atau /iNAT/i untuk kebutuhan akses Internet secara langsung ",
      },
    ],
  },

  7: {
    "elements": [
      {
        "type": "video_asset",
        "value": "assets/videos/install3.mp4",
        "isAsset": true,
      },
      {
        "type": "text",
        "value":
            "1. Pilih /igraphical install/i atau /iinstall/i saja untuk instalasi berbasis /iCLI/i murni. Opsi ini hanya berlaku untuk proses instalasi dan tidak mempengaruhi opsi /ienvironment/i Sistem Operasi /i(GUI/CLI)/i yang ingin dipasang nantinya. untuk saat ini kita pilih install saja agar lebih cepat prosesnya",
      },
      {
        "type": "text",
        "value":
            "2. Konfigurasikan Bahasa, Lokasi, dan Tata Letak Keyboard sesuai dengan preferensi murid. Pastikan memilih opsi yang sesuai agar proses instalasi berjalan lancar. ",
      },
    ],
  },

  8: {
    "elements": [
      {
        "type": "video_asset",
        "value": "assets/videos/install4net.mp4",
        "isAsset": true,
      },
      {"type": "h2", "value": "Konfigurasi network adapter /iVirtualBox/i"},
      {
        "type": "text",
        "value":
            "1. Pilih opsi pertama /ienp0s3/i atau /ieth0/i berdasarkan /idriver virtual host only adapter/i yang telah terpasang sebagai /iprimary network interface/i ",
      },
      {
        "type": "text",
        "value":
            "2. lewati opsi /idefault route/i untuk sementara dengan memilih 'No' dan /ido not configure the network at this time./i Kita akan melakukan konfigurasi jaringan setelah instalasi selesai agar lebih mudah dan fleksibel dalam penyesuaian kebutuhan jaringan virtual yang akan dibuat nantinya.",
      },
    ],
  },

  9: {
    "elements": [
      {
        "type": "video_asset",
        "value": "assets/videos/install5acc.mp4",
        "isAsset": true,
      },
      {"type": "h2", "value": "Konfigurasi Akun Pengguna"},
      {
        "type": "text",
        "value":
            "1. Masukkan nama pengguna utama /i(hostname)/i untuk akun /iadministrator (root)/i dan buat kata sandi yang kuat untuk keamanan sistem. lakukan hal yang sama pada untuk pembuatan /inew user/i baik dari /ifullname/i untuk nama panjang dan juga /ipassword/i lalu verifikasi kembali. Pastikan untuk mengingat informasi ini karena akan diperlukan untuk mengelola sistem operasi jaringan setelah instalasi selesai.",
      },
      {
        "type": "text",
        "value":
            "2 Pilih /itimezone/i yang sesuai dengan lokasi murid untuk memastikan waktu sistem operasi jaringan berjalan dengan benar. ",
      },
    ],
  },

  10: {
    "elements": [
      {
        "type": "video_asset",
        "value": "assets/videos/install6partisi.mp4",
        "isAsset": true,
      },
      {"type": "h2", "value": "Konfigurasi Partisi"},
      {
        "type": "text",
        "value":
            "1. Atur Partisi /iDisk untuk Sistem Operasi Jaringan Debian 12. Pilih opsi /i'Guided - use entire disk'/i untuk menggunakan seluruh ruang disk yang tersedia. Pastikan untuk memilih disk yang benar jika ada lebih dari satu /idisk/i yang terpasang.",
      },
      {
        "type": "text",
        "value":
            "2.  Pada /iGuided - u/ise entire disk,/i Proses akan secara otomatis membuat partisi yang diperlukan untuk sistem operasi jaringan, termasuk partisi /iroot/i (/) dan /iswap/i. Pastikan untuk meninjau konfigurasi partisi sebelum melanjutkan dengan instalasi.",
      },
    ],
  },

  11: {
    "elements": [
      {
        "type": "video_asset",
        "value": "assets/videos/install7environt.mp4",
        "isAsset": true,
      },
      {"type": "h2", "value": "Opsi Environment Sistem Operasi Jaringan"},
      {
        "type": "text",
        "value":
            "1. Hapus centang pada Debian desktop environment dan GNOME (GNU Network Object Model Environment). Opsi ini akan memastikan bahwa sistem operasi jaringan yang terpasang hanya memiliki antarmuka baris perintah (CLI) tanpa lingkungan desktop grafis (GUI). ",
      },
      {
        "type": "text",
        "value":
            "2. Pasang GRUB boot loader pada Master Boot Record (MBR) untuk memastikan sistem operasi  dapat booting dengan benar setelah instalasi selesai. Pilih opsi 'Yes' untuk melanjutkan dengan pemasangan GRUB.",
      },
      {
        "type": "text",
        "value":
            "3. Pasang GRUB pada disk utama (biasanya /idev/sda/i) untuk memastikan bahwa sistem operasi jaringan dapat booting dengan benar setelah instalasi selesai. Pilih disk yang benar jika ada lebih dari satu /idisk/i yang terpasang.",
      },
      {
        "type": "text",
        "value":
            "4. Setelah semua konfigurasi selesai, pilih opsi 'Continue' untuk memulai proses instalasi. Proses ini akan memakan waktu beberapa menit tergantung pada kecepatan sistem dan media instalasi yang digunakan.",
      },
      {
        "type": "text",
        "value":
            "5. Instalasi selesai, pilih opsi 'Continue' untuk me-reboot mesin virtual dan masuk ke sistem operasi jaringan Debian 12 yang baru saja diinstal.",
      },
      {"type": "shortcut_kuis", "quizIndex": 1},
    ],
  },

  12: {
    "title": "BAB 3: Konfigurasi DHCP Server",
    "isHeader": true,
    "elements": [
      {
        "type": "video_asset",
        "value": "assets/videos/dhcp1.mp4",
        "isAsset": true,
      },
      {"type": "h2", "value": "Persiapan & Pengaturan IP Statis Server"},
      {
        "type": "text",
        "value":
            '''/iDHCP (Dynamic Host Configuration Protocol)/i bertugas mendistribusikan alamat IP secara otomatis ke perangkat klien. Berikut tahap persiapannya:''',
      },
      {
        "type": "text",
        "value":
            '''1. Perbarui daftar paket repositori Debian terlebih dahulu dengan perintah /isudo apt update/i.''',
      },
      {
        "type": "text",
        "value":
            '''2. Atur IP statis pada /iinterface/i jaringan server (misal /ieth0/i atau /ienp0s3/i) melalui file /etc/network/interfaces atau menggunakan /inmcli/i agar alamat server tidak berubah-ubah.''',
      },
    ],
  },

  13: {
    "elements": [
      {
        "type": "video_asset",
        "value": "assets/videos/dhcp2_install.mp4",
        "isAsset": true,
      },
      {"type": "h2", "value": "Instalasi Paket isc-dhcp-server"},
      {
        "type": "text",
        "value": '''Berikut langkah instalasi paket DHCP Server pada Debian:''',
      },
      {
        "type": "text",
        "value":
            '''1. Jalankan perintah /isudo apt install isc-dhcp-server/i untuk memasang paket utama layanan DHCP.''',
      },
      {
        "type": "text",
        "value":
            '''2. Catatan: Jangan panik jika muncul pesan /ifailed/i saat instalasi selesai. Hal ini wajar karena servis mencoba berjalan namun belum dikonfigurasi.''',
      },
    ],
  },

  14: {
    "elements": [
      {
        "type": "video_asset",
        "value": "assets/videos/dhcp3_interface.mp4",
        "isAsset": true,
      },
      {"type": "h2", "value": "Konfigurasi Interface Layanan DHCP"},
      {
        "type": "text",
        "value":
            '''Setelah paket terpasang, tentukan kartu jaringan yang akan melayani permintaan DHCP:''',
      },
      {
        "type": "text",
        "value":
            '''1. Buka file konfigurasi interface dengan perintah /isudo nano /etc/default/isc-dhcp-server/i.''',
      },
      {
        "type": "text",
        "value":
            '''2. Pada bagian /iINTERFACESv4/i, isikan nama interface jaringan lokal server (misalnya /iINTERFACESv4="enp0s3"/i), lalu simpan file.''',
      },
    ],
  },

  15: {
    "elements": [
      {
        "type": "video_asset",
        "value": "assets/videos/dhcp4_conf.mp4",
        "isAsset": true,
      },
      {"type": "h2", "value": "Konfigurasi Subnet di File dhcpd.conf"},
      {
        "type": "text",
        "value":
            '''Atur rentang alamat IP yang akan dibagikan ke klien pada file konfigurasi utama DHCP:''',
      },
      {
        "type": "text",
        "value":
            '''1. Buka file /etc/dhcp/dhcpd.conf menggunakan editor /inano/i (/isudo nano /etc/dhcp/dhcpd.conf/i).''',
      },
      {
        "type": "text",
        "value":
            '''2. Tambahkan atau sesuaikan blok /isubnet/i sesuai kebutuhan jaringan, misalnya:\nsubnet 192.168.100.0 netmask 255.255.255.0 {\n  range 192.168.100.10 192.168.100.50;\n  option routers 192.168.100.1;\n}''',
      },
      {
        "type": "text",
        "value": '''3. Simpan perubahan konfigurasi dan keluar dari editor.''',
      },
    ],
  },

  16: {
    "elements": [
      {
        "type": "video_asset",
        "value": "assets/videos/dhcp5_test.mp4",
        "isAsset": true,
      },
      {"type": "h2", "value": "Restart & Pengujian Layanan DHCP Server"},
      {
        "type": "text",
        "value":
            '''Terapkan konfigurasi baru dan pastikan layanan DHCP berjalan normal:''',
      },
      {
        "type": "text",
        "value":
            '''1. Restart layanan DHCP Server dengan perintah /isudo systemctl restart isc-dhcp-server/i.''',
      },
      {
        "type": "text",
        "value":
            '''2. Verifikasi status layanan dengan perintah /isudo systemctl status isc-dhcp-server/i untuk memastikan statusnya /iactive (running)/i tanpa error.''',
      },
      {
        "type": "text",
        "value":
            '''3. Uji pada perangkat klien dengan mengatur IP ke mode otomatis (DHCP) dan pastikan klien memperoleh IP sesuai /irange/i yang ditentukan.''',
      },
      {"type": "shortcut_kuis", "quizIndex": 2},
    ],
  },

  17: {
    "title": "BAB 4: Samba Server",
    "isHeader": true,
    "elements": [
      {"type": "image", "value": "assets/samba.png"},

      {"type": "h2", "value": "Apa itu Samba Server?"},
      {
        "type": "text",
        "value":
            '''/iSamba/i adalah layanan /iopen-source/i yang memungkinkan sistem operasi berbasis Linux/Unix untuk berbagi file, printer, dan sumber daya lainnya dengan perangkat yang menjalankan /iWindows/i melalui protokol /iSMB (Server Message Block)/i atau /iCIFS (Common Internet File System)/i.''',
      },
      {
        "type": "text",
        "value":
            '''Dengan /iSamba/i, komputer Linux (Debian) dapat bertindak sebagai:''',
      },
      {
        "type": "text",
        "value":
            '''1. /iFile Server/i — Berbagi folder antar komputer dalam jaringan lokal.''',
      },
      {
        "type": "text",
        "value":
            '''2. /iPrint Server/i — Berbagi printer ke seluruh jaringan.''',
      },
      {
        "type": "text",
        "value":
            '''3. /iDomain Controller/i — Mengelola autentikasi pengguna seperti /iActive Directory/i pada Windows.''',
      },
      {"type": "h2", "value": "Mengapa Samba Penting?"},
      {
        "type": "text",
        "value":
            '''Dalam lingkungan jaringan campuran /i(Linux + Windows)/i, /iSamba/i menjadi jembatan agar kedua sistem dapat saling berkomunikasi dan berbagi sumber daya tanpa memerlukan perangkat lunak tambahan di sisi klien Windows.''',
      },
    ],
  },

  18: {
    "elements": [
      {"type": "h2", "value": "Persiapan Sebelum Instalasi"},
      {
        "type": "video_asset",
        "value": "assets/videos/tcpip.mp4",
        "isAsset": true,
      },
      {
        "type": "text",
        "value":
            '''Sebelum menginstal /iSamba/i, pastikan /iVM (Virtual Machine)/i Debian 12 sudah terkonfigurasi dengan benar. Murid menjalankan /iDebian 12/i sebagai /iserver/i di dalam /iVirtualBox/i, sementara /iWindows/i di komputer fisik bertindak sebagai klien.''',
      },
      {"type": "h2", "value": "Langkah 1 — Cek IP Address Server"},
      {
        "type": "text",
        "value":
            '''Buka terminal di /iVM/i Debian 12, lalu cek konfigurasi IP dengan perintah:''',
      },
      {"type": "text", "value": '''ip a'''},
      {
        "type": "text",
        "value":
            '''Pastikan terdapat IP statis, contoh: /i192.168.100.1/i dengan netmask /i255.255.255.0/i. Jika belum ada, atur IP statis terlebih dahulu melalui /inano /etc/network/interfaces/i.''',
      },
      {"type": "h2", "value": "Langkah 2 — Cek Koneksi antara VM dan Klien Windows"},
      {
        "type": "text",
        "value":
            '''Pastikan /iVM/i Debian 12 dan komputer /iWindows/i bisa saling berkomunikasi. Dari /iVM/i Debian, kirim /ipping/i ke IP klien Windows:''',
      },
      {"type": "text", "value": '''ping 192.168.100.2'''},
      {
        "type": "text",
        "value":
            '''Jika mendapat balasan /iReply from .../i, koneksi jaringan antara /iVM server/i dan klien Windows sudah aktif.''',
      },
    ],
  },

  19: {
    "elements": [
      {"type": "h2", "value": "Langkah 3 — Update & Upgrade Sistem di VM Debian 12"},
      {
        "type": "text",
        "value":
            '''Sebelum instalasi, perbarui daftar paket dan upgrade sistem di /iVM/i Debian 12. Jalankan perintah berikut di terminal:''',
      },
      {"type": "text", "value": '''sudo apt update && sudo apt upgrade -y'''},
      {
        "type": "text",
        "value":
            '''Keterangan:\n- /iapt update/i — Memperbarui daftar paket dari repositori.\n- /iapt upgrade -y/i — Mengupgrade semua paket usang. Flag /i-y/i menjawab konfirmasi otomatis.\n\nTunggu hingga proses selesai sebelum lanjut ke instalasi.''',
      },
      {"type": "h2", "value": "Langkah 4 — Install Paket Samba"},
      {
        "type": "text",
        "value":
            '''Setelah sistem diperbarui, instal /iSamba/i beserta paket pendukungnya:''',
      },
      {"type": "text", "value": '''sudo apt install samba samba-common-bin -y'''},
      {
        "type": "text",
        "value":
            '''Paket yang diinstal:\n1. /isamba/i — Paket utama layanan Samba Server.\n2. /isamba-common-bin/i — Berisi utilitas pendukung termasuk perintah /itestparm/i.''',
      },
    ],
  },

  20: {
    "elements": [
      {
        "type": "video_youtube",
        "value": "https://youtu.be/dGjvx04-hlc?t=27",
        "title": "Tutorial Instalasi Samba Server di Debian",
      },
      {"type": "h2", "value": "Langkah 5 — Cek Versi Samba"},
      {
        "type": "text",
        "value":
            '''Setelah instalasi selesai, verifikasi versi Samba yang terpasang di /iVM/i Debian 12:''',
      },
      {"type": "text", "value": '''samba --version'''},
      {
        "type": "text",
        "value":
            '''Output akan menampilkan versi seperti /iVersion 4.17.x/i yang menandakan Samba berhasil terinstal.''',
      },
      {"type": "h2", "value": "Langkah 6 — Cek Status Layanan smbd"},
      {
        "type": "text",
        "value":
            '''Pastikan layanan /ismbd/i sudah aktif secara otomatis setelah instalasi:''',
      },
      {"type": "text", "value": '''sudo systemctl status smbd'''},
      {
        "type": "text",
        "value":
            '''Jika status menampilkan /iactive (running)/i berwarna hijau, berarti /iSamba Daemon/i sudah berjalan dan instalasi berhasil.''',
      },
    ],
  },

  21: {
    "elements": [
      {"type": "h2", "value": "Konfigurasi File smb.conf"},
      {
        "type": "text",
        "value":
            '''File konfigurasi utama Samba berada di /i/etc/samba/smb.conf/i. Ikuti langkah berikut untuk mengkonfigurasi share folder di /iVM/i Debian 12:''',
      },
      {"type": "h2", "value": "Langkah 7 — Backup File Konfigurasi Asli"},
      {
        "type": "text",
        "value":
            '''Sebelum mengedit, selalu buat cadangan file /ismb.conf/i untuk mencegah kehilangan konfigurasi jika terjadi kesalahan:''',
      },
      {"type": "text", "value": '''sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bak'''},
      {
        "type": "text",
        "value":
            '''Perintah /icp/i menyalin file asli ke /ismb.conf.bak/i. File asli tetap aman dan bisa dipulihkan kapan saja.''',
      },
      {"type": "h2", "value": "Langkah 8 — Buka File Konfigurasi dengan Nano"},
      {
        "type": "text",
        "value":
            '''Buka file /ismb.conf/i menggunakan editor /inano/i di terminal /iVM/i Debian 12:''',
      },
      {"type": "text", "value": '''sudo nano /etc/samba/smb.conf'''},
      {
        "type": "text",
        "value":
            '''Tekan tombol /i↓ (panah bawah)/i untuk menggulir ke paling bawah file, lalu tambahkan blok konfigurasi baru di sana.''',
      },
    ],
  },

  22: {
    "elements": [
      {"type": "h2", "value": "Langkah 9 — Tambahkan Konfigurasi Share Folder"},
      {
        "type": "text",
        "value":
            '''Ketikkan blok konfigurasi berikut di bagian paling bawah file /ismb.conf/i:''',
      },
      {
        "type": "text",
        "value":
            "[SharedFolder]\n   comment = Folder Berbagi Jaringan\n   path = /srv/samba/shared\n   browseable = yes\n   read only = no\n   guest ok = yes\n   create mask = 0775\n   directory mask = 0775",
      },
      {
        "type": "text",
        "value":
            '''Keterangan parameter:\n1. /i[SharedFolder]/i — Nama share yang terlihat di /iFile Explorer/i Windows.\n2. /ipath/i — Lokasi direktori di /iVM/i server yang dibagikan.\n3. /ibrowseable = yes/i — Folder terlihat saat menjelajahi jaringan.\n4. /iread only = no/i — Klien dapat membaca, menulis, dan menghapus file.\n5. /iguest ok = yes/i — Klien bisa akses tanpa username dan password.''',
      },
      {"type": "h2", "value": "Langkah 10 — Simpan dan Keluar dari Nano"},
      {
        "type": "text",
        "value":
            '''Setelah selesai mengetikkan konfigurasi, simpan dan keluar dari editor /inano/i:''',
      },
      {
        "type": "text",
        "value":
            '''1. Tekan /iCtrl + X/i untuk memulai keluar.\n2. Tekan /iY/i untuk mengkonfirmasi penyimpanan.\n3. Tekan /iEnter/i untuk mengkonfirmasi nama file.\n\nFile /ismb.conf/i berhasil disimpan.''',
      },
    ],
  },

  23: {
    "elements": [
      {"type": "h2", "value": "Membuat Direktori Share & Mengatur Izin Akses"},
      {
        "type": "text",
        "value":
            '''Direktori yang telah didefinisikan di /ismb.conf/i harus dibuat secara manual di /iVM/i Debian 12. Ikuti tiga langkah berikut:''',
      },
      {"type": "h2", "value": "Langkah 11 — Buat Direktori Shared"},
      {
        "type": "text",
        "value":
            '''Buat direktori /ishared/i sesuai path yang sudah ditulis di /ismb.conf/i:''',
      },
      {"type": "text", "value": '''sudo mkdir -p /srv/samba/shared'''},
      {
        "type": "text",
        "value":
            '''Flag /i-p/i pada perintah /imkdir/i akan membuat semua direktori induk (/isrv/i dan /isamba/i) secara otomatis jika belum ada.''',
      },
      {"type": "h2", "value": "Langkah 12 — Atur Kepemilikan & Izin Direktori"},
      {
        "type": "text",
        "value":
            '''Ubah kepemilikan direktori ke akun /inobody/i agar dapat diakses oleh semua pengguna jaringan (mode /iguest/i):''',
      },
      {"type": "text", "value": '''sudo chown nobody:nogroup /srv/samba/shared'''},
      {
        "type": "text",
        "value":
            '''Kemudian berikan izin akses pada direktori tersebut:''',
      },
      {"type": "text", "value": '''sudo chmod 0775 /srv/samba/shared'''},
      {
        "type": "text",
        "value":
            '''Kode /i0775/i artinya pemilik dan grup punya akses penuh (baca, tulis, jalankan), sedangkan pengguna lain hanya bisa membaca dan menjalankan.''',
      },
    ],
  },

  24: {
    "elements": [
      {
        "type": "video_youtube",
        "value": "https://youtu.be/dGjvx04-hlc?t=311",
        "title": "Pengujian Koneksi Samba dari Windows",
      },
      {"type": "h2", "value": "Langkah 13 — Verifikasi Konfigurasi & Restart Layanan"},
      {
        "type": "text",
        "value":
            '''Gunakan utilitas /itestparm/i untuk memastikan tidak ada kesalahan sintaks pada file /ismb.conf/i:''',
      },
      {"type": "text", "value": '''testparm'''},
      {
        "type": "text",
        "value":
            '''Jika tidak ada pesan error, restart dan aktifkan layanan Samba agar konfigurasi baru diterapkan dan berjalan otomatis setiap /iVM/i dinyalakan:''',
      },
      {"type": "text", "value": '''sudo systemctl restart smbd nmbd'''},
      {"type": "text", "value": '''sudo systemctl enable smbd nmbd'''},
      {
        "type": "text",
        "value":
            '''Perintah /isystemctl enable/i mendaftarkan layanan ke daftar startup /isystemd/i sehingga Samba tidak perlu dijalankan manual setiap kali /iVM/i reboot.''',
      },
      {"type": "h2", "value": "Langkah 14 — Pengujian Akses dari Klien Windows"},
      {
        "type": "text",
        "value":
            '''Dari komputer /iWindows/i (klien), uji koneksi ke /iVM/i Samba Server:''',
      },
      {
        "type": "text",
        "value":
            '''1. Buka /iFile Explorer/i (tekan /iWindows + E/i).\n2. Ketikkan pada kolom alamat: /i\\\\192.168.100.1/i lalu tekan /iEnter/i.\n3. Jika berhasil, folder /iSharedFolder/i akan muncul dan bisa dibuka langsung.''',
      },
      {"type": "h2", "value": "Langkah 15 — Pengujian via Command Prompt"},
      {
        "type": "text",
        "value":
            '''Alternatif pengujian menggunakan /iCommand Prompt/i di Windows:''',
      },
      {"type": "text", "value": '''ping 192.168.100.1'''},
      {"type": "text", "value": '''net view \\\\192.168.100.1'''},
      {
        "type": "text",
        "value":
            '''Perintah /inet view/i menampilkan daftar nama share di /iVM/i Samba Server. Jika /iSharedFolder/i muncul, konfigurasi /iSamba Server/i di /iVM/i Debian 12 telah berhasil sepenuhnya.''',
      },
      {"type": "shortcut_kuis", "quizIndex": 3},
    ],
  },
};