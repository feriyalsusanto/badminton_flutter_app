import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer extends StatefulWidget {
  VideoPlayer(this.title, {this.url, this.assetName});

  String title;
  String url;
  String assetName;

  @override
  _VideoPlayerState createState() {
    return _VideoPlayerState();
  }
}

class _VideoPlayerState extends State<VideoPlayer> {
  ChewieController _chewieController;
  VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = widget.url != null
        ? VideoPlayerController.network(widget.url)
        : VideoPlayerController.asset(widget.url);
    _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        aspectRatio: 3 / 2,
        autoInitialize: true,
        looping: true);
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Chewie(
        controller: _chewieController,
      ),
    );
  }
}
