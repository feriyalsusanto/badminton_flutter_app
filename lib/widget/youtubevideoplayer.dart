import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoPlayer extends StatefulWidget {
  YoutubeVideoPlayer(this.title, this.url);

  final String title;
  final String url;

  @override
  _YoutubeVideoPlayerState createState() {
    return _YoutubeVideoPlayerState();
  }
}

class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
  YoutubePlayerController _controller = YoutubePlayerController();

  void listener() {
    if (_controller.value.playerState == PlayerState.ENDED) {
      _showThankYouDialog();
    }
  }

  @override
  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  @override
  void initState() {
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: YoutubePlayer(
        context: context,
        width: width,
        videoId: widget.url,
        flags: YoutubePlayerFlags(
          mute: false,
          autoPlay: true,
          forceHideAnnotation: true,
          showVideoProgressIndicator: true,
          disableDragSeek: false,
          hideThumbnail: true,
          hideFullScreenButton: true,
        ),
        videoProgressIndicatorColor: Color(0xFFFF0000),
        progressColors: ProgressColors(
          playedColor: Color(0xFFFF0000),
          handleColor: Color(0xFFFF4433),
        ),
        onPlayerInitialized: (controller) {
          _controller = controller;
          _controller.addListener(listener);
        },
      ),
    );
  }

  void _showThankYouDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Video Ended"),
          content: Text("Thank you for trying the plugin!"),
        );
      },
    );
  }
}
