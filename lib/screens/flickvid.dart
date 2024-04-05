// import 'package:flick_video_player/flick_video_player.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class FlickVid extends StatefulWidget {
//   final String vid;
//   const FlickVid({super.key, required this.vid});

//   @override
//   State<FlickVid> createState() => _FlickVidState();
// }

// class _FlickVidState extends State<FlickVid> {
//   late FlickManager flickManager;

//   @override
//   void initState() {
//     super.initState();
//     flickManager = FlickManager(
//       videoPlayerController: VideoPlayerController.asset(widget.vid),
//     );
//   }

//   @override
//   void dispose() {
//     flickManager.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.black,
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         child: Stack(
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 vertical: MediaQuery.of(context).size.height * 0.04,
//               ),
//               child: FlickVideoPlayer(
//                 flickManager: flickManager,
//                 flickVideoWithControls: FlickVideoWithControls(
//                   videoFit: BoxFit.fitWidth,
//                   controls: Padding(
//                     padding: EdgeInsets.symmetric(
//                         horizontal: MediaQuery.of(context).size.width * 0.1),
//                     child: const FlickPortraitControls(),
//                   ),
//                 ),
//                 flickVideoWithControlsFullscreen: FlickVideoWithControls(
//                   controls: Padding(
//                     padding: EdgeInsets.symmetric(
//                         horizontal: MediaQuery.of(context).size.width * 0.1),
//                     child: const FlickPortraitControls(),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               left: MediaQuery.of(context).size.width * 0.03,
//               top: MediaQuery.of(context).size.height * 0.08,
//               child: Container(
//                 decoration: BoxDecoration(
//                     borderRadius: const BorderRadius.all(Radius.circular(20)),
//                     color: Colors.grey.withOpacity(0.8)),
//                 child: IconButton(
//                   icon: const Icon(
//                     Icons.navigate_before_outlined,
//                     color: Colors.black,
//                   ),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
