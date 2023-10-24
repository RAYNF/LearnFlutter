 class foodList{
  String namaMakanan;
  String pembuat;
  String fotoMakanan;
  String asal;
  String porsi;
  List <String> Langkah;
  List <String> Bahan;

  foodList({
    required this.namaMakanan,
    required this.pembuat,
    required this.fotoMakanan,
    required this.asal,
    required this.porsi,
    required this.Langkah,
    required this.Bahan
  });
 }

 var foodListFavorite = [
  foodList(
   namaMakanan: "Pecel Khas Semarang",
   pembuat: "Farah Khan",
   fotoMakanan: "assets/images/pecel3.png",
   asal: "Semarang, Jawa Tengah",
   porsi: "2 - 4 Orang",
   Langkah: [
       'Bumbu pecel: Goreng cabai merah besar, cabai rawit merah, dan bawang putih hingga layu. Haluskan kacang tanah goreng bersama tumisan cabai, kencur, gula merah, dan garam.',
    'Tambahkan air asam jawa dan air hangat. Aduk hingga tercampur rata. ',
    'Rebus daun bayam, irisan kol, potongan kacang panjang, dan taoge hingga matang, tiriskan.',
    'Siapkan pinggan, tata sayuran di dalam pinggan. Tuang dengan bumbu pecel di atasnya.',
    'Sajikan pecel sayur dengan rempeyek udang.'
   ],
   Bahan: [
    '1 ikat bayam, ambil daunnya, siangi ',
    '5 lembar kol, iris sesuai selera', 
    '6 lonjor kacang panjang, potong sekitar 3 cm ',
    '50 gram taoge, siangi ',
    '150 ml air hangat'
   ]
   ),

   foodList(
    namaMakanan: "Sate Bakar",
     pembuat: "Mario", 
     fotoMakanan: "assets/images/Rectangle4.png",
     asal: "Wonosobo, Jawa Tengah",
     porsi: "2 - 3 Orang",
     Langkah: [
         'Sate Bakar: Goreng cabai merah besar, cabai rawit merah, dan bawang putih hingga layu. Haluskan kacang tanah goreng bersama tumisan cabai, kencur, gula merah, dan garam.',
          'Tambahkan air asam jawa dan air hangat. Aduk hingga tercampur rata. ',
          'Rebus daun bayam, irisan kol, potongan kacang panjang, dan taoge hingga matang, tiriskan.',
          'Siapkan pinggan, tata sayuran di dalam pinggan. Tuang dengan bumbu pecel di atasnya.',
          'Sajikan pecel sayur dengan rempeyek udang.'
     ],
      Bahan: [
    '1 ikat bayam, ambil daunnya, siangi ',
    '5 lembar kol, iris sesuai selera', 
    '6 lonjor kacang panjang, potong sekitar 3 cm ',
    '50 gram taoge, siangi ',
    '150 ml air hangat'
   ]
     ),
     foodList(
    namaMakanan: "Sate taichan",
     pembuat: "Santo", 
     fotoMakanan: "assets/images/Rectangle4.png",
     asal: "Bandung, Jawa Barat",
     porsi: "2 Orang",
     Langkah: [
         'Sate taichan: Goreng cabai merah besar, cabai rawit merah, dan bawang putih hingga layu. Haluskan kacang tanah goreng bersama tumisan cabai, kencur, gula merah, dan garam.',
    'Tambahkan air asam jawa dan air hangat. Aduk hingga tercampur rata. ',
    'Rebus daun bayam, irisan kol, potongan kacang panjang, dan taoge hingga matang, tiriskan.',
    'Siapkan pinggan, tata sayuran di dalam pinggan. Tuang dengan bumbu pecel di atasnya.',
    'Sajikan pecel sayur dengan rempeyek udang.'
     ],
      Bahan: [
    '1 ikat bayam, ambil daunnya, siangi ',
    '5 lembar kol, iris sesuai selera', 
    '6 lonjor kacang panjang, potong sekitar 3 cm ',
    '50 gram taoge, siangi ',
    '150 ml air hangat'
   ]
     )
 ];

 var foodListBaru1 = [
  foodList(
    namaMakanan: "Pancake", 
    pembuat: "chef juna", 
    fotoMakanan: "assets/images/pancake.png",
    asal: "Jakarta, Ibu Kota",
    porsi: "3 Orang",
    Langkah: [
         'Pancake: Goreng cabai merah besar, cabai rawit merah, dan bawang putih hingga layu. Haluskan kacang tanah goreng bersama tumisan cabai, kencur, gula merah, dan garam.',
        'Tambahkan air asam jawa dan air hangat. Aduk hingga tercampur rata. ',
        'Rebus daun bayam, irisan kol, potongan kacang panjang, dan taoge hingga matang, tiriskan.',
        'Siapkan pinggan, tata sayuran di dalam pinggan. Tuang dengan bumbu pecel di atasnya.',
        'Sajikan pecel sayur dengan rempeyek udang.'
    ],
     Bahan: [
    '1 ikat bayam, ambil daunnya, siangi ',
    '5 lembar kol, iris sesuai selera', 
    '6 lonjor kacang panjang, potong sekitar 3 cm ',
    '50 gram taoge, siangi ',
    '150 ml air hangat'
   ]
    ),
    foodList(
     namaMakanan: "spageti",
     pembuat: "Wilgoz", 
     fotoMakanan: "assets/images/spageti.png",
     asal: "Denpasar, Bali",
     porsi: "2 Orang",
     Langkah: [
         'Spageti: Goreng cabai merah besar, cabai rawit merah, dan bawang putih hingga layu. Haluskan kacang tanah goreng bersama tumisan cabai, kencur, gula merah, dan garam.',
    'Tambahkan air asam jawa dan air hangat. Aduk hingga tercampur rata. ',
    'Rebus daun bayam, irisan kol, potongan kacang panjang, dan taoge hingga matang, tiriskan.',
    'Siapkan pinggan, tata sayuran di dalam pinggan. Tuang dengan bumbu pecel di atasnya.',
    'Sajikan pecel sayur dengan rempeyek udang.'
     ],
      Bahan: [
    '1 ikat bayam, ambil daunnya, siangi ',
    '5 lembar kol, iris sesuai selera', 
    '6 lonjor kacang panjang, potong sekitar 3 cm ',
    '50 gram taoge, siangi ',
    '150 ml air hangat'
   ]
     ),
     foodList(
     namaMakanan: "Indomie",
     pembuat: "Jeje", 
     fotoMakanan: "assets/images/spageti.png",
     asal: "Purwokerto, Jawa Tengah",
     porsi: "1 Orang",
     Langkah: [
         'Indomie: Goreng cabai merah besar, cabai rawit merah, dan bawang putih hingga layu. Haluskan kacang tanah goreng bersama tumisan cabai, kencur, gula merah, dan garam.',
    'Tambahkan air asam jawa dan air hangat. Aduk hingga tercampur rata. ',
    'Rebus daun bayam, irisan kol, potongan kacang panjang, dan taoge hingga matang, tiriskan.',
    'Siapkan pinggan, tata sayuran di dalam pinggan. Tuang dengan bumbu pecel di atasnya.',
    'Sajikan pecel sayur dengan rempeyek udang.'
     ],
      Bahan: [
    '1 ikat bayam, ambil daunnya, siangi ',
    '5 lembar kol, iris sesuai selera', 
    '6 lonjor kacang panjang, potong sekitar 3 cm ',
    '50 gram taoge, siangi ',
    '150 ml air hangat'
   ]
     ),
 ];

  var foodListBaru2 = [
 
    foodList(
     namaMakanan: "spageti",
     pembuat: "Wilgoz", 
     fotoMakanan: "assets/images/spageti.png",
     asal: "Denpasar, Bali",
     porsi: "2 - 3 Orang",
     Langkah: [
         'Spageti: Goreng cabai merah besar, cabai rawit merah, dan bawang putih hingga layu. Haluskan kacang tanah goreng bersama tumisan cabai, kencur, gula merah, dan garam.',
    'Tambahkan air asam jawa dan air hangat. Aduk hingga tercampur rata. ',
    'Rebus daun bayam, irisan kol, potongan kacang panjang, dan taoge hingga matang, tiriskan.',
    'Siapkan pinggan, tata sayuran di dalam pinggan. Tuang dengan bumbu pecel di atasnya.',
    'Sajikan pecel sayur dengan rempeyek udang.'
     ],
      Bahan: [
    '1 ikat bayam, ambil daunnya, siangi ',
    '5 lembar kol, iris sesuai selera', 
    '6 lonjor kacang panjang, potong sekitar 3 cm ',
    '50 gram taoge, siangi ',
    '150 ml air hangat'
   ]
     ),
    foodList(
    namaMakanan: "Pancake", 
    pembuat: "chef juna", 
    fotoMakanan: "assets/images/pancake.png",
    asal: "Purwokerto, Jawa Tengah",
    porsi: "2 - 3 Orang",
    Langkah: [
         'Pancake: Goreng cabai merah besar, cabai rawit merah, dan bawang putih hingga layu. Haluskan kacang tanah goreng bersama tumisan cabai, kencur, gula merah, dan garam.',
    'Tambahkan air asam jawa dan air hangat. Aduk hingga tercampur rata. ',
    'Rebus daun bayam, irisan kol, potongan kacang panjang, dan taoge hingga matang, tiriskan.',
    'Siapkan pinggan, tata sayuran di dalam pinggan. Tuang dengan bumbu pecel di atasnya.',
    'Sajikan pecel sayur dengan rempeyek udang.'
    ],
     Bahan: [
    '1 ikat bayam, ambil daunnya, siangi ',
    '5 lembar kol, iris sesuai selera', 
    '6 lonjor kacang panjang, potong sekitar 3 cm ',
    '50 gram taoge, siangi ',
    '150 ml air hangat'
   ]
    ),
     foodList(
     namaMakanan: "Indomie",
     pembuat: "Jeje", 
     fotoMakanan: "assets/images/spageti.png",
     asal: "Purwokerto, Jawa Tengah",
     porsi: "2 - 3 Orang",
     Langkah: [
         'Indomie: Goreng cabai merah besar, cabai rawit merah, dan bawang putih hingga layu. Haluskan kacang tanah goreng bersama tumisan cabai, kencur, gula merah, dan garam.',
    'Tambahkan air asam jawa dan air hangat. Aduk hingga tercampur rata. ',
    'Rebus daun bayam, irisan kol, potongan kacang panjang, dan taoge hingga matang, tiriskan.',
    'Siapkan pinggan, tata sayuran di dalam pinggan. Tuang dengan bumbu pecel di atasnya.',
    'Sajikan pecel sayur dengan rempeyek udang.'
     ],
      Bahan: [
    '1 ikat bayam, ambil daunnya, siangi ',
    '5 lembar kol, iris sesuai selera', 
    '6 lonjor kacang panjang, potong sekitar 3 cm ',
    '50 gram taoge, siangi ',
    '150 ml air hangat'
   ]
     ),
 ];