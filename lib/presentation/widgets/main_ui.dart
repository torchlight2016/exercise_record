import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MainUI extends StatefulWidget {
  const MainUI({Key? key}) : super(key: key);

  @override
  State<MainUI> createState() => _MainUIState();
}

class _MainUIState extends State<MainUI> {
  late VideoPlayerController _controller;

  late Future<void> _initializeVideoPlayerFuture;

  var _videoLists = [
    'assets/videos/ad_video1.mp4',
    'assets/videos/ad_video2.mp4'
  ];

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(_videoLists.first);

    _initializeVideoPlayerFuture =
        _controller.initialize().then((value) => setState(() {
              _controller.play();
            }));

    _controller.addListener(checkVideo);
  }

  @override
  void dispose() {
    _controller.removeListener(checkVideo);
    _controller.dispose();
  }

  void checkVideo() {
    if (_controller.value.position.inSeconds ==
        _controller.value.duration.inSeconds) {
      _controller.removeListener(checkVideo);
      _videoLists = [_videoLists.last, _videoLists.first];

      _controller = VideoPlayerController.asset(_videoLists.first);

      _initializeVideoPlayerFuture =
          _controller.initialize().then((value) => setState(() {
                _controller.play();
              }));

      _controller.addListener(checkVideo);
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
