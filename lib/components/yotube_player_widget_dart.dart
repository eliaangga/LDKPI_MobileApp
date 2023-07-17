import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubePlayerWidget extends StatefulWidget {
  final String videoId;

  YouTubePlayerWidget({required this.videoId});

  @override
  _YouTubePlayerWidgetState createState() => _YouTubePlayerWidgetState();
}

class _YouTubePlayerWidgetState extends State<YouTubePlayerWidget> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    )..addListener(_onPlayerStateChanged);
  }

  void _onPlayerStateChanged() {
    final playerState = _controller.value.playerState;

    if (playerState == PlayerState.ended) {
    } else if (playerState == PlayerState.playing) {
    } else if (playerState == PlayerState.paused) {
    } else if (playerState == PlayerState.buffering) {}
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final maxWidth = constraints.maxWidth;
          final maxHeight = maxWidth * (176 / 350);

          return SizedBox(
            width: maxWidth < 350 ? maxWidth : 350,
            height: maxHeight < 176 ? maxHeight : 176,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                progressIndicatorColor: Colors.red,
                progressColors: ProgressBarColors(
                  playedColor: Colors.red,
                  handleColor: Colors.redAccent,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
