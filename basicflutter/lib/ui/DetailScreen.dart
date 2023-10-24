// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class DetailScreen extends StatefulWidget {
//   const DetailScreen({super.key});

//   @override
//   State<DetailScreen> createState() => _DetailScreenState();
// }

// class _DetailScreenState extends State<DetailScreen> {
//   List langkahMasak = [
//     'Bumbu pecel: Goreng cabai merah besar, cabai rawit merah, dan bawang putih hingga layu. Haluskan kacang tanah goreng bersama tumisan cabai, kencur, gula merah, dan garam.',
//     'Tambahkan air asam jawa dan air hangat. Aduk hingga tercampur rata. ',
//     'Rebus daun bayam, irisan kol, potongan kacang panjang, dan taoge hingga matang, tiriskan.',
//     'Siapkan pinggan, tata sayuran di dalam pinggan. Tuang dengan bumbu pecel di atasnya.',
//     'Sajikan pecel sayur dengan rempeyek udang.'
//   ];

// //key for drawwer
//   final GlobalKey<ScaffoldState> key = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: key,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: IconButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             icon: Icon(
//               Icons.arrow_back,
//               color: Colors.black,
//             )),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 key.currentState?.openEndDrawer();
//               },
//               icon: Icon(
//                 Icons.menu,
//                 color: Colors.black,
//               ))
//         ],
//       ),
//       endDrawer: Drawer(
//         child: SafeArea(
//             child: Column(
//           children: [MenuTile(title: "coba1"), MenuTile(title: "coba2")],
//         )),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//             child:
//                 //navigasi
//                 Padding(
//                     padding: EdgeInsets.only(left: 20, right: 23),
//                     child: Column(children: [
//                       SizedBox(height: 5),
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(20),
//                         child: Container(
//                           width: double.infinity,
//                           child: Image.asset("assets/images/pecel3.png",
//                               fit: BoxFit.fill),
//                         ),
//                       ),
//                       //deskripsi
//                       SizedBox(height: 10),
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: [
//                           Text("Pecel khas Semarang",
//                               style: GoogleFonts.inter(
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 20)),
//                           SizedBox(height: 10),
//                           //penulis
//                           Row(
//                             children: [
//                               InkWell(
//                                 onTap: () {},
//                                 child: CircleAvatar(
//                                   radius: 13,
//                                   backgroundColor: Colors.blue,
//                                   child: Text("DM"),
//                                 ),
//                               ),
//                               SizedBox(width: 10),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text("Farah Kuino",
//                                       style: GoogleFonts.inter(
//                                           color: Colors.black,
//                                           fontWeight: FontWeight.w700,
//                                           fontSize: 14)),
//                                   SizedBox(height: 5),
//                                   Row(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.center,
//                                     children: [
//                                       Icon(
//                                         Icons.location_on_outlined,
//                                         color: Colors.grey,
//                                         size: 15,
//                                       ),
//                                       SizedBox(width: 2),
//                                       Text("Semarang, Jawa Tengah",
//                                           style: GoogleFonts.inter(
//                                               fontSize: 10,
//                                               color: Colors.grey,
//                                               fontWeight: FontWeight.w400))
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             ],
//                           ),
//                           SizedBox(height: 10),
//                           Divider(
//                             color: Colors.black,
//                           ),
//                           SizedBox(height: 5),
//                           Text("Bahan - bahan",
//                               style: GoogleFonts.inter(
//                                   fontWeight: FontWeight.w700,
//                                   fontSize: 14,
//                                   color: Colors.black)),
//                           Text("2 - 4 Orang",
//                               style: GoogleFonts.inter(
//                                   fontSize: 10,
//                                   fontWeight: FontWeight.w400,
//                                   color: Colors.grey)),
//                           SizedBox(height: 10),

//                           RichText(
//                             text: TextSpan(
//                                 style: GoogleFonts.inter(
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 10,
//                                   color: Colors.black,
//                                 ),
//                                 children: [
//                                   TextSpan(
//                                       text: "1 ikat bayam,",
//                                       style: GoogleFonts.inter(
//                                           fontWeight: FontWeight.w700)),
//                                   TextSpan(text: "ambil daunnya, siangi"),
//                                 ]),
//                           ),
//                           SizedBox(height: 5),
//                           RichText(
//                             text: TextSpan(
//                                 style: GoogleFonts.inter(
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 10,
//                                   color: Colors.black,
//                                 ),
//                                 children: [
//                                   TextSpan(
//                                       text: "5 lembar kol,",
//                                       style: GoogleFonts.inter(
//                                           fontWeight: FontWeight.w700)),
//                                   TextSpan(text: "iris sesuai selera"),
//                                 ]),
//                           ),
//                           SizedBox(height: 5),
//                           RichText(
//                             text: TextSpan(
//                                 style: GoogleFonts.inter(
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 10,
//                                   color: Colors.black,
//                                 ),
//                                 children: [
//                                   TextSpan(
//                                       text: "6 lonjor kacang panjang,",
//                                       style: GoogleFonts.inter(
//                                           fontWeight: FontWeight.w700)),
//                                   TextSpan(text: "potong sekitar 3 cm"),
//                                 ]),
//                           ),
//                           SizedBox(height: 5),
//                           RichText(
//                             text: TextSpan(
//                                 style: GoogleFonts.inter(
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 10,
//                                   color: Colors.black,
//                                 ),
//                                 children: [
//                                   TextSpan(
//                                       text: "50 gram taoge, ",
//                                       style: GoogleFonts.inter(
//                                           fontWeight: FontWeight.w700)),
//                                   TextSpan(text: "siangi"),
//                                 ]),
//                           ),
//                           SizedBox(height: 5),
//                           RichText(
//                             text: TextSpan(
//                                 style: GoogleFonts.inter(
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 10,
//                                   color: Colors.black,
//                                 ),
//                                 children: [
//                                   TextSpan(
//                                       text: "150 ml",
//                                       style: GoogleFonts.inter(
//                                           fontWeight: FontWeight.w700)),
//                                   TextSpan(text: "air hangat"),
//                                 ]),
//                           ),
//                           SizedBox(height: 5),
//                           Divider(
//                             color: Colors.black,
//                           ),
//                           SizedBox(height: 5),
//                           Text("Langkah Pembuatan",
//                               style: GoogleFonts.inter(
//                                   fontWeight: FontWeight.w700,
//                                   fontSize: 14,
//                                   color: Colors.black)),
//                           SizedBox(height: 5),

//                           ListView.builder(
//                               shrinkWrap: true,
//                               itemCount: langkahMasak.length,
//                               physics: NeverScrollableScrollPhysics(),
//                               itemBuilder: (context, index) {
//                                 return Row(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text("${index + 1}."),
//                                     SizedBox(width: 8),
//                                     Flexible(child: Text(langkahMasak[index]))
//                                   ],
//                                 );
//                               }),

//                           Divider(
//                             color: Colors.black,
//                           ),
//                           SizedBox(height: 5),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text("Komentar",
//                                   style: GoogleFonts.inter(
//                                       fontWeight: FontWeight.w700,
//                                       fontSize: 16,
//                                       color: Colors.black)),
//                               TextButton(
//                                   onPressed: () {},
//                                   child: Row(
//                                     children: [
//                                       Text("Lihat Semua",
//                                           style: GoogleFonts.inter(
//                                               color: Colors.amber,
//                                               fontWeight: FontWeight.w700,
//                                               fontSize: 12)),
//                                       Icon(
//                                         Icons.arrow_forward,
//                                         color: Colors.amber,
//                                       )
//                                     ],
//                                   ))
//                             ],
//                           ),
//                           SizedBox(height: 5),
//                           Row(
//                             children: [
//                               InkWell(
//                                 onTap: () {},
//                                 child: CircleAvatar(
//                                   radius: 10,
//                                   backgroundColor: Colors.blue,
//                                   child: Text("DM"),
//                                 ),
//                               ),
//                               SizedBox(width: 10),
//                               Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text("Farah Kuino",
//                                       style: GoogleFonts.inter(
//                                           color: Colors.black,
//                                           fontWeight: FontWeight.w700,
//                                           fontSize: 10)),
//                                   SizedBox(height: 5),
//                                   Text("kenaoa kok saya pas masak gosong ya?",
//                                       style: GoogleFonts.inter(
//                                           fontWeight: FontWeight.w400,
//                                           fontSize: 10,
//                                           color: Colors.grey))
//                                 ],
//                               )
//                             ],
//                           ),
//                           SizedBox(height: 10)

//                         ],
//                       )
//                     ]))),
//       ),
//     );
//   }
// }

// class MenuTile extends StatelessWidget {
//   final String title;
//   const MenuTile({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(title),
//       trailing: Icon(
//         Icons.navigate_next,
//         color: Colors.black,
//       ),
//     );
//   }
// }

//sudah pakai list view.builder
import 'package:basicflutter/model/footList.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatefulWidget {
  final foodList food;
  const DetailScreen({super.key, required this.food});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // List langkahMasak = [
  //   'Bumbu pecel: Goreng cabai merah besar, cabai rawit merah, dan bawang putih hingga layu. Haluskan kacang tanah goreng bersama tumisan cabai, kencur, gula merah, dan garam.',
  //   'Tambahkan air asam jawa dan air hangat. Aduk hingga tercampur rata. ',
  //   'Rebus daun bayam, irisan kol, potongan kacang panjang, dan taoge hingga matang, tiriskan.',
  //   'Siapkan pinggan, tata sayuran di dalam pinggan. Tuang dengan bumbu pecel di atasnya.',
  //   'Sajikan pecel sayur dengan rempeyek udang.'
  // ];

//key for drawwer
  final GlobalKey<ScaffoldState> key = GlobalKey();

  double ukuran = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {
                key.currentState?.openEndDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ))
        ],
      ),
      endDrawer: Drawer(
        child: SafeArea(
            child: Column(
          children: [MenuTile(title: "coba1"), MenuTile(title: "coba2")],
        )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child:
                //navigasi
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 23),
                    child: Column(children: [
                      SizedBox(height: 5),
                      InkWell(
                        onTap: () {
                          setState(() {
                            ukuran = 300;
                          });
                          
                        },
                        onDoubleTap: () {
                          setState(() {
                            ukuran = 200;
                          });
                        },
                        child:  ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Expanded(child: Container(
                          height: ukuran,
                          child: Image.asset(widget.food.fotoMakanan,
                              fit: BoxFit.fill),
                        )
                        )
                      ),
                      ),
                     
                      //deskripsi
                      SizedBox(height: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(widget.food.namaMakanan,
                              style: GoogleFonts.inter(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20)),
                          SizedBox(height: 10),
                          //penulis
                          Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: CircleAvatar(
                                  radius: 13,
                                  backgroundColor: Colors.blue,
                                  child: Text("DM"),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(widget.food.pembuat,
                                      style: GoogleFonts.inter(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14)),
                                  SizedBox(height: 5),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.location_on_outlined,
                                        color: Colors.grey,
                                        size: 15,
                                      ),
                                      SizedBox(width: 2),
                                      Text(widget.food.asal,
                                          style: GoogleFonts.inter(
                                              fontSize: 10,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w400))
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Divider(
                            color: Colors.black,
                          ),
                          SizedBox(height: 5),
                          Text("Bahan - bahan",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Colors.black)),
                          Text(widget.food.porsi,
                              style: GoogleFonts.inter(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey)),
                          SizedBox(height: 10),

                          //bahan
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: widget.food.Bahan.length,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flexible(
                                        child: Text(widget.food.Bahan[index]))
                                  ],
                                );
                              }),
                          // RichText(
                          //   text: TextSpan(
                          //       style: GoogleFonts.inter(
                          //         fontWeight: FontWeight.w400,
                          //         fontSize: 10,
                          //         color: Colors.black,
                          //       ),
                          //       children: [
                          //         TextSpan(
                          //             text: "1 ikat bayam,",
                          //             style: GoogleFonts.inter(
                          //                 fontWeight: FontWeight.w700)),
                          //         TextSpan(text: "ambil daunnya, siangi"),
                          //       ]),
                          // ),
                          // SizedBox(height: 5),
                          // RichText(
                          //   text: TextSpan(
                          //       style: GoogleFonts.inter(
                          //         fontWeight: FontWeight.w400,
                          //         fontSize: 10,
                          //         color: Colors.black,
                          //       ),
                          //       children: [
                          //         TextSpan(
                          //             text: "5 lembar kol,",
                          //             style: GoogleFonts.inter(
                          //                 fontWeight: FontWeight.w700)),
                          //         TextSpan(text: "iris sesuai selera"),
                          //       ]),
                          // ),
                          // SizedBox(height: 5),
                          // RichText(
                          //   text: TextSpan(
                          //       style: GoogleFonts.inter(
                          //         fontWeight: FontWeight.w400,
                          //         fontSize: 10,
                          //         color: Colors.black,
                          //       ),
                          //       children: [
                          //         TextSpan(
                          //             text: "6 lonjor kacang panjang,",
                          //             style: GoogleFonts.inter(
                          //                 fontWeight: FontWeight.w700)),
                          //         TextSpan(text: "potong sekitar 3 cm"),
                          //       ]),
                          // ),
                          // SizedBox(height: 5),
                          // RichText(
                          //   text: TextSpan(
                          //       style: GoogleFonts.inter(
                          //         fontWeight: FontWeight.w400,
                          //         fontSize: 10,
                          //         color: Colors.black,
                          //       ),
                          //       children: [
                          //         TextSpan(
                          //             text: "50 gram taoge, ",
                          //             style: GoogleFonts.inter(
                          //                 fontWeight: FontWeight.w700)),
                          //         TextSpan(text: "siangi"),
                          //       ]),
                          // ),
                          // SizedBox(height: 5),
                          // RichText(
                          //   text: TextSpan(
                          //       style: GoogleFonts.inter(
                          //         fontWeight: FontWeight.w400,
                          //         fontSize: 10,
                          //         color: Colors.black,
                          //       ),
                          //       children: [
                          //         TextSpan(
                          //             text: "150 ml",
                          //             style: GoogleFonts.inter(
                          //                 fontWeight: FontWeight.w700)),
                          //         TextSpan(text: "air hangat"),
                          //       ]),
                          // ),
                          SizedBox(height: 5),
                          Divider(
                            color: Colors.black,
                          ),
                          SizedBox(height: 5),
                          Text("Langkah Pembuatan",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Colors.black)),
                          SizedBox(height: 5),

                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: widget.food.Langkah.length,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${index + 1}."),
                                    SizedBox(width: 8),
                                    Flexible(
                                        child: Text(widget.food.Langkah[index]))
                                  ],
                                );
                              }),

                          Divider(
                            color: Colors.black,
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Komentar",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Colors.black)),
                              TextButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Text("Lihat Semua",
                                          style: GoogleFonts.inter(
                                              color: Colors.amber,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12)),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: Colors.amber,
                                      )
                                    ],
                                  ))
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: CircleAvatar(
                                  radius: 10,
                                  backgroundColor: Colors.blue,
                                  child: Text("DM"),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Farah Kuino",
                                      style: GoogleFonts.inter(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 10)),
                                  SizedBox(height: 5),
                                  Text("kenaoa kok saya pas masak gosong ya?",
                                      style: GoogleFonts.inter(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                          color: Colors.grey))
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 10)
                        ],
                      )
                    ]))),
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  final String title;
  const MenuTile({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Icon(
        Icons.navigate_next,
        color: Colors.black,
      ),
    );
  }
}
