// ignore_for_file: prefer_const_constructors

// Ramzi (TrumpJO)
/// Resources used :
/// https://blog.logrocket.com/flutter-video-player/

import 'package:elearning/Home.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video extends StatefulWidget {
  const Video({super.key});

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: (() {
              Navigator.pop(context, MaterialPageRoute(builder: ((context) {
                return Home();
              })));
            }),
            icon: Icon(Icons.home_filled))
      ]),
      body: Center(
        child: MyVideoPlayer(),
      ),
    );
  }
}

class MyVideoPlayer extends StatefulWidget {
  const MyVideoPlayer({super.key});

  @override
  State<MyVideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<MyVideoPlayer> {
  late VideoPlayerController _videoPlayerController;
  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.asset('video/test1.mp4')
      ..initialize().then((_) {
        setState(() {});
        _videoPlayerController.play();
      });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const int seekForwordValue = 5;
    const int seekRewindValue = -5;
    var pauseBtn = ElevatedButton(
        onPressed: () {
          _videoPlayerController.pause();
        },
        child: Icon(Icons.pause));
    var playBtn = ElevatedButton(
        onPressed: () {
          _videoPlayerController.play();
        },
        child: Icon(Icons.play_arrow));
    var fastForwordBtn = ElevatedButton(
        onPressed: () {
          _seekTo(seekForwordValue);
        },
        child: Icon(Icons.fast_forward));
    var fastRewinddBtn = ElevatedButton(
        onPressed: () {
          _seekTo(seekRewindValue);
        },
        child: Icon(Icons.fast_rewind));
    var video = _videoPlayerController.value.isInitialized
        ? AspectRatio(
            aspectRatio: _videoPlayerController.value.aspectRatio,
            child: Stack(
              children: [
                VideoPlayer(_videoPlayerController),
                // _ControlsOverlay(controller: _videoPlayerController),
                VideoProgressIndicator(
                  _videoPlayerController,
                  allowScrubbing: true,
                  colors: VideoProgressColors(
                    backgroundColor: Colors.black,
                    bufferedColor: Colors.lightBlueAccent.shade100,
                    playedColor: Colors.blue.shade700,
                  ),
                ),
              ],
            ))
        : Center(
            child: Text("Error, No Video!"),
          );
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        video,
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            fastRewinddBtn,
            pauseBtn,
            playBtn,
            fastForwordBtn,
          ],
        )
      ],
    );
  }

  Future<void> _seekTo(int timeToSeekInSeconds) {
    return _videoPlayerController.seekTo(Duration(
        seconds: _videoPlayerController.value.position.inSeconds +
            timeToSeekInSeconds));
  }
}
