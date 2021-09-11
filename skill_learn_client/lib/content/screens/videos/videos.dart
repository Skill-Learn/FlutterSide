// import 'package:flutter/material.dart';
// import 'package:videos_player/model/control.model.dart';
// import 'package:videos_player/model/video.model.dart';
// import 'package:videos_player/videos_player.dart';

// class VideoPlayer extends StatefulWidget {
  
//   @override
//   _VideoPlayerState createState() => _VideoPlayerState();
// }

// class _VideoPlayerState extends State<VideoPlayer> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: VideosPlayer(
//         networkVideos: [
//           new NetworkVideo(
//               id: "2",
//               name: "Elephant Dream",
//               videoUrl:
//                   "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
//               thumbnailUrl:
//                   "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg",
//               videoControl: new NetworkVideoControl(
//                 fullScreenByDefault: false,
//               )),
//         ],
//       ),
//     );
//   }
// }