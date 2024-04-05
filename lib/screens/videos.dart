// import 'package:flutter/material.dart';
// import 'package:swaraashinetralaya/screens/flickvid.dart';

// class StudioScreen extends StatefulWidget {
//   const StudioScreen({super.key});

//   @override
//   State<StudioScreen> createState() => _StudioScreenState();
// }

// class _StudioScreenState extends State<StudioScreen> {
//   List<String> imgs = ["assets/eye.jpeg", "assets/eye.jpeg"];
//   List<String> vids = [
//     "assets/videogallery/sample.mp4",
//     "assets/videogallery/sample1.mp4"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           backgroundColor: const Color.fromARGB(255, 122, 228, 126),
//           toolbarHeight: 65,
//           elevation: 5,
//           shadowColor: Colors.black,
//           centerTitle: true,
//           title: const Text(
//             'Videos',
//             style: TextStyle(
//               fontSize: 22,
//             ),
//           )),
//       body: Container(
//         padding: const EdgeInsets.all(20),
//         child: SingleChildScrollView(
//           child: Wrap(
//             children: [
//               InkWell(
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => FlickVid(vid: vids[0])));
//                 },
//                 child: SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: Image.asset(imgs[0]),
//                 ),
//               ),
//               const Center(
//                 child: Text("Title"),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Divider(
//                 height: 30,
//                 thickness: 2,
//               ),
//               InkWell(
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => FlickVid(vid: vids[1])));
//                 },
//                 child: SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   child: Image.asset(imgs[1]),
//                 ),
//               ),
//               const Center(
//                 child: Text("Title"),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Divider(
//                 height: 30,
//                 thickness: 2,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
