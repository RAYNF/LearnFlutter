// import 'package:basicflutter/ui/DetailScreen.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   String name = " ";
//   int currentIndex = 0;

//   List<Widget> body = [
//     HomePageScreen(),
//     Icon(Icons.favorite),
//     Icon(Icons.notifications),
//     Icon(Icons.person)
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: body[currentIndex],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         unselectedItemColor: const Color.fromARGB(255, 152, 153, 152),
//         currentIndex: currentIndex,
//         selectedItemColor: Colors.amber,
//         onTap: (int newIndex) {
//           setState(() {
//             currentIndex = newIndex;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//               label: "Home", icon: Icon(Icons.home)),
//           BottomNavigationBarItem(
//               label: "Menu",
//               icon: Icon(
//                 Icons.favorite,

//               )),
//           BottomNavigationBarItem(
//               label: "profile",
//               icon: Icon(Icons.notifications)),
//           BottomNavigationBarItem(
//               label: "notif", icon: Icon(Icons.person))
//         ],
//       ),
//     );
//   }
// }

// //Card MenuResepBaru
// class ResepBaru extends StatefulWidget {
//   const ResepBaru({super.key});

//   @override
//   State<ResepBaru> createState() => _ResepBaruState();
// }

// class _ResepBaruState extends State<ResepBaru> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: EdgeInsets.only(right: 10),
//         child: Container(
//           width: 197,
//           child: Column(
//             children: [
//               //gambar
//               Container(
//                 height: 124,
//                 width: 197,
//                 child: InkWell(
//                   onTap: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) {
//                       return DetailScreen();
//                     }));
//                   },
//                   child: Image.asset(
//                     "assets/images/pecel3.png",
//                   ),
//                 ),
//               ),
//               //deskripsi
//               Container(
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         //nama makanan
//                         Text("Pecel Khas Semaranga",
//                             style: GoogleFonts.inter(
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 12,
//                                 color: Colors.black)),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text(
//                           "by Farah Kuin",
//                           style: GoogleFonts.inter(
//                               fontWeight: FontWeight.w400, fontSize: 10),
//                         )
//                       ],
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ));
//   }
// }

// //Card MenuResepViral
// class ResepViral extends StatefulWidget {
//   const ResepViral({super.key});

//   @override
//   State<ResepViral> createState() => _ResepViralState();
// }

// class _ResepViralState extends State<ResepViral> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: 10),
//       child: Container(
//         width: 197,
//         child: Column(
//           children: [
//             //gambar
//             Container(
//               height: 124,
//               width: 197,
//               child: InkWell(
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) {
//                     return DetailScreen();
//                   }));
//                 },
//                 child: Image.asset(
//                   "assets/images/pecel3.png",
//                 ),
//               ),
//             ),
//             //deskripsi
//             Container(
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       //nama makanan
//                       Text("Pecel Khas Semaranga",
//                           style: GoogleFonts.inter(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 12,
//                               color: Colors.black)),

//                       IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       InkWell(
//                         onTap: () {},
//                         child: CircleAvatar(
//                           radius: 13,
//                           backgroundColor: Colors.blue,
//                           child: Text("DM"),
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Text(
//                         "by Farah Kuin",
//                         style: GoogleFonts.inter(
//                             fontWeight: FontWeight.w400, fontSize: 10),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomePageScreen extends StatelessWidget {
//   const HomePageScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.only(top: 20, left: 20),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Text("Temukan berbagai resep ",
//                       style: GoogleFonts.inter(
//                           color: Colors.black,
//                           fontSize: 20,
//                           fontWeight: FontWeight.w700)),
//                   Text("Kuliner Nusantara ",
//                       style: GoogleFonts.inter(
//                           color: Colors.black,
//                           fontSize: 20,
//                           fontWeight: FontWeight.w700)),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 15, left: 20, right: 23),
//               child: TextField(
//                 keyboardType: TextInputType.name,
//                 decoration: InputDecoration(
//                   isDense: true,
//                   prefixIcon: Icon(Icons.search),
//                   labelText: "Cari Resep",
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20)),
//                   focusedBorder: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20)),
//                 ),
//               ),
//             ),
//             Padding(
//                 padding: EdgeInsets.only(top: 5, left: 20, right: 23),
//                 child: Column(
//                   children: [
//                     //resep viral
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("Resep Viral",
//                             style: GoogleFonts.inter(
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 16,
//                                 color: Colors.black)),
//                         TextButton(
//                             onPressed: () {},
//                             child: Row(
//                               children: [
//                                 Text("Lihat Semua",
//                                     style: GoogleFonts.inter(
//                                         color: Colors.amber,
//                                         fontWeight: FontWeight.w700,
//                                         fontSize: 12)),
//                                 Icon(
//                                   Icons.arrow_forward,
//                                   color: Colors.amber,
//                                 )
//                               ],
//                             ))
//                       ],
//                     ),
//                   ],
//                 )),
//             //menu resepViral
//             Padding(
//                 padding: EdgeInsets.only(top: 5, left: 20),
//                 child: Column(
//                   children: [
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: [ResepViral(), ResepViral(), ResepViral()],
//                       ),
//                     )
//                   ],
//                 )),

//             //resep baru
//             Padding(
//                 padding: EdgeInsets.only(top: 20, left: 20, right: 23),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("Resep Terbaru",
//                             style: GoogleFonts.inter(
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 16,
//                                 color: Colors.black)),
//                         TextButton(
//                             onPressed: () {},
//                             child: Row(
//                               children: [
//                                 Text("Lihat Semua",
//                                     style: GoogleFonts.inter(
//                                         color: Colors.amber,
//                                         fontWeight: FontWeight.w700,
//                                         fontSize: 12)),
//                                 Icon(
//                                   Icons.arrow_forward,
//                                   color: Colors.amber,
//                                 )
//                               ],
//                             ))
//                       ],
//                     ),
//                   ],
//                 )),

//             //menu resep baru part1
//             Padding(
//                 padding: EdgeInsets.only(top: 5, left: 20),
//                 child: Column(
//                   children: [
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: [ResepBaru(), ResepBaru(), ResepBaru()],
//                       ),
//                     )
//                   ],
//                 )),

//             //menu resep baru part2
//             Padding(
//                 padding: EdgeInsets.only(top: 10, left: 20),
//                 child: Column(
//                   children: [
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: [ResepBaru(), ResepBaru(), ResepBaru()],
//                       ),
//                     )
//                   ],
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }

//builder
import 'package:basicflutter/model/footList.dart';
import 'package:basicflutter/ui/DetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String name = " ";
  int currentIndex = 0;

  List<Widget> body = [
    HomePageScreen(),
    Icon(Icons.favorite),
    Icon(Icons.notifications),
    Icon(Icons.person)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: body[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color.fromARGB(255, 152, 153, 152),
        currentIndex: currentIndex,
        selectedItemColor: Colors.amber,
        onTap: (int newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: "Menu",
              icon: Icon(
                Icons.favorite,
              )),
          BottomNavigationBarItem(
              label: "profile", icon: Icon(Icons.notifications)),
          BottomNavigationBarItem(label: "notif", icon: Icon(Icons.person))
        ],
      ),
    );
  }
}

//halaman 1
class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: 
             Expanded(child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 20,),
                  Text("Temukan berbagai resep ",
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                  Text("Kuliner Nusantara ",
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                ],
              ),
              )
             
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(top: 15, left: 20, right: 23),
              child: TextField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  isDense: true,
                  prefixIcon: Icon(Icons.search),
                  labelText: "Cari Resep",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 5, left: 20, right: 23),
                child: Column(
                  children: [
                    //resep viral
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Resep Viral",
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
                  ],
                )),
            //menu resepViral
            Container(
              height: 210,
              child: Padding(
                  padding: EdgeInsets.only(top: 5, left: 20),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: foodListFavorite.length,
                      itemBuilder: (context, index) {
                        final foodList food = foodListFavorite[index];
                        return Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Container(
                                width: 197,
                                child: Column(
                                  children: [
                                    //gambar
                                    Container(
                                      height: 124,
                                      width: 197,
                                      child: InkWell(
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return DetailScreen(
                                              food: food,
                                            );
                                          }));
                                        },
                                        child: Image.asset(
                                          food.fotoMakanan,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    //deskripsi
                                    Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              //nama makanan
                                              Text(food.namaMakanan,
                                                  style: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 12,
                                                      color: Colors.black)),

                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(Icons.more_horiz))
                                            ],
                                          ),
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
                                              Text(
                                                food.pembuat,
                                                style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 10),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        );
                      })),
            ),

            //resep baru
            Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 23),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Resep Terbaru",
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
                  ],
                )),

            //menu resep baru part1
            Container(
              height: 210,
              child: Padding(
                  padding: EdgeInsets.only(top: 5, left: 20),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: foodListBaru1.length,
                      itemBuilder: (context, index) {
                        final foodList food = foodListBaru1[index];
                        return Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Container(
                                  width: 197,
                                  child: Column(
                                    children: [
                                      //gambar
                                      Container(
                                        height: 124,
                                        width: 197,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return DetailScreen(
                                                food: food,
                                              );
                                            }));
                                          },
                                          child: Image.asset(
                                            food.fotoMakanan,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      //deskripsi
                                      Container(
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                //nama makanan
                                                Text(food.namaMakanan,
                                                    style: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 12,
                                                        color: Colors.black)),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  food.pembuat,
                                                  style: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 10),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        );
                      })),
            ),

            //menu resep baru part2
            Container(
              height: 210,
              child: Padding(
                  padding: EdgeInsets.only(top: 5, left: 20),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: foodListBaru2.length,
                      itemBuilder: (context, index) {
                        final foodList food = foodListBaru2[index];
                        return Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Container(
                                  width: 197,
                                  child: Column(
                                    children: [
                                      //gambar
                                      Container(
                                        height: 124,
                                        width: 197,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return DetailScreen(
                                                food: food,
                                              );
                                            }));
                                          },
                                          child: Image.asset(
                                            food.fotoMakanan,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      //deskripsi
                                      Container(
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                //nama makanan
                                                Text(food.namaMakanan,
                                                    style: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 12,
                                                        color: Colors.black)),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  food.pembuat,
                                                  style: GoogleFonts.inter(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 10),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        );
                      })),
            ),
          ],
        ),
      ),
    );
  }
}




//Card MenuResepBaru
// class ResepBaru extends StatefulWidget {
//   String namaMakanan;
//   String pembuat;
//   String fotoMakanan;
//   ResepBaru(
//       {super.key,
//       required this.namaMakanan,
//       required this.pembuat,
//       required this.fotoMakanan});

//   @override
//   State<ResepBaru> createState() => _ResepBaruState();
// }

// class _ResepBaruState extends State<ResepBaru> {
  // final foodList food = foodListBaru2[1];
  // @override
  // Widget build(BuildContext context) {
  //   return Padding(
  //       padding: EdgeInsets.only(right: 10),
  //       child: Container(
  //         width: 197,
  //         child: Column(
  //           children: [
  //             //gambar
  //             Container(
  //               height: 124,
  //               width: 197,
  //               child: InkWell(
  //                 onTap: () {
  //                   Navigator.push(context,
  //                       MaterialPageRoute(builder: (context) {
  //                     return DetailScreen(food: food,);
  //                   }));
  //                 },
  //                 child: Image.asset(
  //                   food.fotoMakanan,
  //                   fit: BoxFit.cover,
  //                 ),
  //               ),
  //             ),
  //             //deskripsi
  //             Container(
  //               child: Column(
  //                 children: [
  //                   Row(
  //                     mainAxisAlignment: MainAxisAlignment.start,
  //                     children: [
  //                       //nama makanan
  //                       Text(food.namaMakanan,
  //                           style: GoogleFonts.inter(
  //                               fontWeight: FontWeight.w700,
  //                               fontSize: 12,
  //                               color: Colors.black)),
  //                     ],
  //                   ),
  //                   Row(
  //                     mainAxisAlignment: MainAxisAlignment.start,
  //                     children: [
  //                       Text(
  //                         food.pembuat,
  //                         style: GoogleFonts.inter(
  //                             fontWeight: FontWeight.w400, fontSize: 10),
  //                       )
  //                     ],
  //                   )
  //                 ],
  //               ),
  //             )
  //           ],
  //         ),
  //       ));
  // }




//Card MenuResepViral
// class ResepViral extends StatefulWidget {
//   String namaMakanan;
//   String pembuat;
//   String fotoMakanan;
//   ResepViral(
//       {super.key,
//       required this.namaMakanan,
//       required this.pembuat,
//       required this.fotoMakanan});

//   @override
//   State<ResepViral> createState() => _ResepViralState();
// }

// class _ResepViralState extends State<ResepViral> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: 10),
//       child: Container(
//         width: 197,
//         child: Column(
//           children: [
//             //gambar
//             Container(
//               height: 124,
//               width: 197,
//               child: InkWell(
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) {
//                     return DetailScreen();
//                   }));
//                 },
//                 child: Image.asset(
//                   widget.fotoMakanan,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             //deskripsi
//             Container(
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       //nama makanan
//                       Text(widget.namaMakanan,
//                           style: GoogleFonts.inter(
//                               fontWeight: FontWeight.w700,
//                               fontSize: 12,
//                               color: Colors.black)),

//                       IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       InkWell(
//                         onTap: () {},
//                         child: CircleAvatar(
//                           radius: 13,
//                           backgroundColor: Colors.blue,
//                           child: Text("DM"),
//                         ),
//                       ),
//                       SizedBox(width: 10),
//                       Text(
//                         widget.pembuat,
//                         style: GoogleFonts.inter(
//                             fontWeight: FontWeight.w400, fontSize: 10),
//                       )
//                     ],
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
