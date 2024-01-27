class University {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String imageAssets;
  List<String> imageUrls;

  University({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.imageAssets,
    required this.imageUrls,
  });
}

var universitylist = [
  University(
    name: 'Universitas Binaniaga',
    location: 'Kota Bogor',
    description:
        'Universitas Binaniaga Indonesia atau disingkat UNBIN adalah sebuah universitas yang berasal dari gabungan 3 Perguruan Tinggi dibawah naungan Yayasan Binaniaga yaitu STIE Binaniaga, STIKOM Binaniaga dan AMIK Bogor. Unbin saat ini memiliki 2 faukltas yaitu ekonomi dan Ilmu komputer.',
    openDays: 'Open Monday - Saturday',
    openTime: '09:00 - 17:00',
    imageAssets: 'images/unbin.webp',
    imageUrls: [
      'https://www.unbin.ac.id/public/assets/img/platform/bin_20231.webp',
      'https://www.unbin.ac.id/public/assets/img/platform/ISRP_2023.webp',
      'https://www.unbin.ac.id/public/assets/img/platform/gelombang_3_2023.webp',
      'https://www.unbin.ac.id/public/assets/img/platform/bin_may.webp'
    ],
  ),
  University(
    name: 'Universitas Pakuan',
    location:
        'Jl. Pakuan, Tegallega. Kecamatan Bogor Tengah, Kota Bogor. Jawa Barat 16143',
    description:
        'UNIVERSITAS PAKUAN (UNPAK) merupakan kelanjutan dari Universitas Bogor (Unbo) yang berkiprah selama hampir dua dekade sampai dengan tahun 1980. Beberapa perguruan tinggi swasta pada tahun 1977 berfusi dengan universitas ini yaitu Akademi Pariwisata, IKIP PGRI, Akademi Bahasa Asing, Akademi Sekretaris Manajemen Internasional dan Akademi Ilmu Agama Islam dengan badan penyelenggara Yayasan Perguruan Tinggi Bogor (YPTB).',
    openDays: 'Open Monday - Friday',
    openTime: '07.30 - 17.00',
    imageAssets: 'images/unpak.webp',
    imageUrls: [
      'https://www.unpak.ac.id/images/slider/cache/983df27fab65eae3c21494dd1220342a/perpus-unpak1.webp',
      'https://www.unpak.ac.id/images/slider/cache/949ac022e25596ae743177079c35b222/lmsnew1.webp',
      'https://www.unpak.ac.id/images/slider/cache/8c520480197f223ccccab398dafb9882/office1.webp',
    ],
  ),
  University(
    name: 'Universitas Bina Sarana informatika',
    location:
        'Jl. Merdeka No.71, RT.01/RW.05, Ciwaringin, Kecamatan Bogor Tengah, Kota Bogor, Jawa Barat 16124',
    description:
        'Perubahan Akademi Bina Sarana Informatika (BSI) menjadi Universitas Bina Sarana Informatika (UBSI) telah diresmikan. Penyerahan Surat Keputusan Perubahan Akademi BSI menjadi Universitas Bina Sarana Informatika (UBSI) ini berlangsung di BSI Convention Center, Jalan Raya Kaliabang nomor 8, Perwira, Bekasi Utara, Bekasi, Jawa Barat. Surat Keputusan tersebut diserahkan langsung oleh Sekretaris Jenderal Kementrian Riset, Teknologi dan Pendidikan Tinggi, Prof Ainun Naâ€™im PhD, MBA, kepada Pengurus Yayasan Bina Sarana Informatika, Efriadi Salim yang didampingi Direktur BSI Naba Aji Notoseputro. Kegiatan ini dilakukan bersamaan dengan rangkaian kegiatan seminar motivasi BSI dan disaksikan langsung oleh 9 ribu mahasiswa baru BSI tahun ajaran 2018/2019. ',
    openDays: 'Open Monday - Saturday',
    openTime: '07.30 - 16.30',
    imageAssets: 'images/bsi.webp',
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVON70W2HXI43vyrBnWTRUlVskEpncMipFdzcjdBwlKVwRDgGjDjI3rNkk0tqNZx5kM1s&usqp=CAU',
      'https://kemahasiswaan.bsi.ac.id/assets/images/slider/20231023185529-P2MD.jpg',
      'https://kemahasiswaan.bsi.ac.id/assets/images/slider/20231023185341-P2MD2023.jpg',
      'https://kemahasiswaan.bsi.ac.id/assets/images/slider/20230823123628-CEOSekolah.jpg',
    ],
  ),
  University(
    name: 'Universitas Diponegoro',
    location:
        'Jl. Prof. Sudarto No.13, Tembalang, Kec. Tembalang, Kota Semarang, Jawa Tengah 50275',
    description:
        'Diponegoro University is a public university in Semarang, Central Java, Indonesia. Founded in 1957 as a private university by the Semarang University Foundation, which later in 1960 became public university, and named after Javanese Prince Diponegoro. It is the oldest education corporation in Central Java.  ',
    openDays: 'Open Monday - Friday',
    openTime: '07.30 - 16.00',
    imageAssets: 'images/undip.jpg',
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVKeRknQejlk8Ddv_NmVTPCE_0uBzcRHs7bQrZXl4pcQoVB8J1YwwzgIGK9xlzpmORJ3Y&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRssrJSQ9g6MQ5HHHnxEklEWn7XnUYVdqq0g&usqp=CAU',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3jZG-fsdy9Ram8oqW0kTcUqhcIWmPkTLRPA&usqp=CAU',
    ],
  ),
  University(
    name: 'Universitas Pelita Harapan',
    location:
        'Jalan M.H. Thamrin Boulevard No.1100, Klp. Dua, Kec. Klp. Dua, Kabupaten Tangerang, Banten 15811',
    description:
        'Universitas Pelita Harapan adalah sebuah perguruan tinggi swasta yang berlokasi di Tangerang dengan lokasi seperti, Program Sarjana S-1 di Lippo Village, Kelapa Dua, Kelapa Dua, Tangerang, Banten, Program Master Universitas Pelita Harapan terletak di Karet Semanggi, Setiabudi, Jakarta Selatan.',
    openDays: 'Open Monday - Friday',
    openTime: '07.00 - 16.00',
    imageAssets: 'images/uphj.webp',
    imageUrls: [
      'https://www.uph.edu/wp-content/uploads/2019/01/Group-41-300x256-645x560-c-default-copy-300x260-645x560-c-default.png?x91533',
      'https://www.uph.edu/wp-content/uploads/2018/12/Group-48-300x200-c-default.png?x91533',
      'https://www.uph.edu/wp-content/uploads/2019/01/Group-54-240x180-c-default-copy-240x180-c-default.png?x91533',
    ],
  ),
  University(
    name: 'Universitas Gajah Mada',
    location:
        'Bulaksumur, Caturtunggal, Depok, Sleman Regency, Special Region of Yogyakarta 55281',
    description:
        'Universitas Gadjah Mada adalah perguruan tinggi negeri di Daerah Istimewa Yogyakarta, Indonesia. Universitas Gadjah Mada merupakan perguruan tinggi pertama yang didirikan oleh Pemerintah Indonesia setelah Indonesia merdeka.',
    openDays: 'Open Monday - Friday',
    openTime: '07.30 - 16.30',
    imageAssets: 'images/ugm.webp',
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQd7j_iFcrHUFDB7P9YxbkvH1AcPO8U1PpyLw&usqp=CAU',
      'https://lh3.googleusercontent.com/p/AF1QipMVc8na-TYuE7A0ktO0Z17urrqtQ47hXG5fB3V5=s680-w680-h510',
      'https://lh3.googleusercontent.com/p/AF1QipNvfaLm-RTm7-Q-h0802cySeII0kv7NwzwChYB-=s680-w680-h510',
    ],
  ),
];
