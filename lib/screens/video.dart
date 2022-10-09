// ignore_for_file: prefer_const_constructors

// Ramzi (TrumpJO)
/// Resources used :
/// https://pub.dev/packages/video_player
/// https://blog.logrocket.com/flutter-video-player/

import 'package:elearning/Home.dart';
import 'package:elearning/shared/colors.dart';
import 'package:elearning/shared/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

String videoAssertPath = 'assets/video/test.mp4';

class Video extends StatelessWidget {
  Video({String videoPath = 'assets/video/video_cover.mp4'}) {
    videoAssertPath = videoPath;
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Builder(builder: (BuildContext context) {
        return Scaffold(
          key: const ValueKey<String>('home_page'),
          appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            leading: MyWidgets.BtnToGo_Home(context),
            backgroundColor: MyColors.appBarColor,
            title: const Text('Videos Zone'),
            actions: <Widget>[_fullScreenMode(context)],
            bottom: const TabBar(
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.ondemand_video_outlined),
                  text: 'Video Player',
                ),
                Tab(
                  icon: Icon(Icons.list),
                  text: 'Videos List',
                ),
              ],
            ),
          ),
          body: Container(
            decoration: MyColors.background_BoxDecoration(),
            child: TabBarView(
              children: <Widget>[
                _VideoPlayer(),
                _VideosList(),
              ],
            ),
          ),
        );
      }),
    );
  }
}

IconButton _fullScreenMode(BuildContext context) {
  return IconButton(
    key: const ValueKey<String>('push_tab'),
    icon: const Icon(Icons.fullscreen),
    onPressed: () {
      Navigator.push<_PlayerVideoAndPopPage>(
        context,
        MaterialPageRoute<_PlayerVideoAndPopPage>(
          builder: (BuildContext context) => _PlayerVideoAndPopPage(),
        ),
      );
    },
  );
}

class _VideosList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _VideoListCard(
          context: context,
          title: "Forget to do vs forget doing",
          videoPath: "assets/video/Forget-to-do-vs-forget-doing.mp4",
        ),
        _VideoListCard(
          context: context,
          title: "Make & Do",
          videoPath: "assets/video/Make-do.mp4",
        ),
        _VideoListCard(
          context: context,
          title: "Ways to say 'sorry' Part 1",
          videoPath: "assets/video/Ways-to-say-sorry-Part-1.mp4",
        ),
        _VideoListCard(
          context: context,
          title: "Ways to say 'sorry' Part 2",
          videoPath: "assets/video/Ways-to-say-sorry-Part-2.mp4",
        ),
      ],
    );
  }
}

/// A filler card to show the video in a list of scrolling contents.
Padding _VideoListCard({
  required BuildContext context,
  required String title,
  required String videoPath,
}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Color.fromARGB(236, 255, 255, 255),
      shadowColor: Colors.black,
      elevation: 22,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        trailing: TextButton(
          child: const Text('Watch Video'),
          onPressed: () {
            // should change to 'Video Player' Tab.
            // However, I did not knew how. so I used pushReplacement

            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              return Video(
                videoPath: videoPath,
              );
            }));
          },
        ),
      ),
    ),
  );
}

class _VideoPlayer extends StatefulWidget {
  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<_VideoPlayer> {
  late VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(videoAssertPath);

    _controller.setLooping(true);
    _controller.initialize().then((_) => setState(() {}));
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double padBottom = MediaQuery.of(context).size.height;
    print(padBottom);
    padBottom = MediaQuery.of(context).size.height * 0.4;
    print(padBottom);
    return Container(
      child: AspectRatio(
        aspectRatio: _controller.value.aspectRatio,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            VideoPlayer(_controller),
            _ControlsOverlay(videoPlayerController: _controller),
            VideoProgressIndicator(_controller, allowScrubbing: true),
          ],
        ),
      ),
    );
  }
}

class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({Key? key, required this.videoPlayerController})
      : super(key: key);

  static const List<double> _examplePlaybackRates = <double>[
    0.25,
    0.5,
    1.0,
    1.5,
    2.0,
    3.0,
    5.0,
  ];

  final VideoPlayerController videoPlayerController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 50),
          reverseDuration: const Duration(milliseconds: 200),
          child: videoPlayerController.value.isPlaying
              ? const SizedBox.shrink()
              : Container(
                  color: Colors.black26,
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.redAccent,
                      size: 100.0,
                      semanticLabel: 'Play',
                    ),
                  ),
                ),
        ),
        GestureDetector(
          onTap: () {
            videoPlayerController.value.isPlaying
                ? videoPlayerController.pause()
                : videoPlayerController.play();
          },
        ),
        Align(
          alignment: Alignment.topRight,
          child: PopupMenuButton<double>(
            initialValue: videoPlayerController.value.playbackSpeed,
            tooltip: 'Playback speed',
            onSelected: (double speed) {
              videoPlayerController.setPlaybackSpeed(speed);
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<double>>[
                for (final double speed in _examplePlaybackRates)
                  PopupMenuItem<double>(
                    value: speed,
                    child: Text('${speed}x'),
                  )
              ];
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                // Using less vertical padding as the text is also longer
                // horizontally, so it feels like it would need more spacing
                // horizontally (matching the aspect ratio of the video).
                vertical: 12,
                horizontal: 16,
              ),
              child: Text('${videoPlayerController.value.playbackSpeed}x'),
            ),
          ),
        ),
      ],
    );
  }
}

class _PlayerVideoAndPopPage extends StatefulWidget {
  @override
  _PlayerVideoAndPopPageState createState() => _PlayerVideoAndPopPageState();
}

class _PlayerVideoAndPopPageState extends State<_PlayerVideoAndPopPage> {
  late VideoPlayerController _videoPlayerController;
  bool startedPlaying = false;

  @override
  void initState() {
    super.initState();

    _videoPlayerController = VideoPlayerController.asset(videoAssertPath);
    _videoPlayerController.addListener(() {
      if (startedPlaying && !_videoPlayerController.value.isPlaying) {
        Navigator.pop(context);
      }
    });
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }

  Future<bool> started() async {
    await _videoPlayerController.initialize();
    await _videoPlayerController.play();
    startedPlaying = true;
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: FutureBuilder<bool>(
          future: started(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (snapshot.data ?? false) {
              return _VideoPlayer();
            } else {
              return const Text('waiting for video to load');
            }
          },
        ),
      ),
    );
  }
}
