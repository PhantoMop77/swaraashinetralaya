import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OurPhotos extends StatefulWidget {
  const OurPhotos({super.key});

  @override
  State<OurPhotos> createState() => _OurPhotosState();
}

class _OurPhotosState extends State<OurPhotos> {
  // List<String> imgs = [
  //   'assets/photogallery/photo1.jpeg',
  //   'assets/photogallery/photo2.jpeg',
  //   'assets/photogallery/photo3.jpeg',
  //   'assets/photogallery/photo4.jpeg',
  //   'assets/photogallery/photo5.jpeg',
  //   'assets/photogallery/photo6.jpeg',
  //   'assets/photogallery/photo7.jpeg',
  //   'assets/photogallery/photo8.jpeg',
  //   'assets/photogallery/photo9.jpeg',
  //   'assets/photogallery/photo10.jpeg',
  //   'assets/photogallery/photo11.jpeg',
  //   'assets/photogallery/photo12.jpeg',
  //   'assets/photogallery/photo13.jpeg',
  //   'assets/photogallery/photo14.jpeg',
  //   'assets/photogallery/photo15.jpeg',
  //   'assets/photogallery/photo16.jpeg',
  //   'assets/photogallery/photo17.jpeg',
  //   'assets/photogallery/photo18.jpeg',
  //   'assets/photogallery/photo19.jpeg',
  //   'assets/photogallery/photo20.jpeg',
  //   'assets/photogallery/photo21.jpeg',
  //   'assets/photogallery/photo22.jpeg',
  //   'assets/photogallery/photo23.jpeg',
  //   'assets/photogallery/photo24.jpeg'
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 122, 228, 126),
          toolbarHeight: 65,
          elevation: 5,
          shadowColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'Photo Gallery',
            style: TextStyle(
              fontSize: 22,
            ),
          )),
      body: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background1.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Text(
              "Our Photo Gallery",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.6)),
            ),
            const Divider(
              height: 20,
              thickness: 3,
            ),
            Expanded(
              child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('photogallery')
                    .orderBy('DateTime', descending: true)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Text("Something Went wrong");
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Text("Loading");
                  }
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                    ),
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: ((context) {
                                return Center(
                                  child: SizedBox(
                                    height: 300,
                                    width: 300,
                                    child: Image.network(
                                      snapshot.data!.docs[index]['Imageurl'],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                );
                              }));
                        },
                        child: SizedBox(
                          height: 150,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Image.network(
                            snapshot.data!.docs[index]['Imageurl'],
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),

      // body: SingleChildScrollView(
      //   child: Container(
      //     decoration: const BoxDecoration(
      //       image: DecorationImage(
      //           image: AssetImage("assets/background1.jpg"),
      //           fit: BoxFit.cover),
      //     ),
      //     child: Container(
      //       padding: const EdgeInsets.all(10),
      //       child: Center(
      //         child: Column(
      //           children: [
      //             Text(
      //               "Our Photo Gallery",
      //               style: TextStyle(
      //                   fontSize: 26,
      //                   fontWeight: FontWeight.bold,
      //                   color: Colors.black.withOpacity(0.6)),
      //             ),
      //             const Divider(
      //               height: 20,
      //               thickness: 3,
      //             ),
      //             Wrap(
      //               direction: Axis.vertical,
      //               spacing: 20,
      //               children: [
      //                 Wrap(
      //                   direction: Axis.horizontal,
      //                   spacing: 20,
      //                   children: [
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[0]),
      //                     ),
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[1]),
      //                     ),
      //                   ],
      //                 ),
      //                 Wrap(
      //                   spacing: 20,
      //                   children: [
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[2]),
      //                     ),
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[3]),
      //                     ),
      //                   ],
      //                 ),
      //                 Wrap(
      //                   direction: Axis.horizontal,
      //                   spacing: 20,
      //                   children: [
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[4]),
      //                     ),
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[5]),
      //                     ),
      //                   ],
      //                 ),
      //                 Wrap(
      //                   spacing: 20,
      //                   children: [
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[6]),
      //                     ),
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[7]),
      //                     ),
      //                   ],
      //                 ),
      //                 Wrap(
      //                   direction: Axis.horizontal,
      //                   spacing: 20,
      //                   children: [
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[8]),
      //                     ),
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[9]),
      //                     ),
      //                   ],
      //                 ),
      //                 Wrap(
      //                   spacing: 20,
      //                   children: [
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[10]),
      //                     ),
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[11]),
      //                     ),
      //                   ],
      //                 ),
      //                 Wrap(
      //                   direction: Axis.horizontal,
      //                   spacing: 20,
      //                   children: [
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[12]),
      //                     ),
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[13]),
      //                     ),
      //                   ],
      //                 ),
      //                 Wrap(
      //                   spacing: 20,
      //                   children: [
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[14]),
      //                     ),
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[15]),
      //                     ),
      //                   ],
      //                 ),
      //                 Wrap(
      //                   direction: Axis.horizontal,
      //                   spacing: 20,
      //                   children: [
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[16]),
      //                     ),
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[17]),
      //                     ),
      //                   ],
      //                 ),
      //                 Wrap(
      //                   spacing: 20,
      //                   children: [
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[18]),
      //                     ),
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[19]),
      //                     ),
      //                   ],
      //                 ),
      //                 Wrap(
      //                   direction: Axis.horizontal,
      //                   spacing: 20,
      //                   children: [
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[20]),
      //                     ),
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[21]),
      //                     ),
      //                   ],
      //                 ),
      //                 Wrap(
      //                   spacing: 20,
      //                   children: [
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[22]),
      //                     ),
      //                     SizedBox(
      //                       width: 160,
      //                       height: 160,
      //                       child: Image.asset(imgs[23]),
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //             const SizedBox(
      //               height: 40,
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // )
    );
  }
}
