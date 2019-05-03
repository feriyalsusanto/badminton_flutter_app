import 'package:flutter/material.dart';
import 'package:youtube_player/youtube_player.dart';

class YoutubeVideoPlayer extends StatefulWidget {
  YoutubeVideoPlayer(this.title, this.url);

  String title;
  String url;

  @override
  _YoutubeVideoPlayerState createState() {
    return _YoutubeVideoPlayerState();
  }
}

class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
  VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: YoutubePlayer(
        source: widget.url,
        context: context,
        quality: YoutubeQuality.HD,
        aspectRatio: 16 / 9,
        autoPlay: true,
        loop: false,
        reactToOrientationChange: true,
        startFullScreen: false,
        controlsActiveBackgroundOverlay: true,
        controlsTimeOut: Duration(seconds: 4),
        playerMode: YoutubePlayerMode.DEFAULT,
        callbackController: (controller) {
          _videoPlayerController = controller;
        },
        onError: (error) {
          print(error);
        },
        onVideoEnded: () {},
      ),
    );
  }
}
