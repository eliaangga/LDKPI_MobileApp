import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String url;

  final DataSourceType dataSourceType;

  const VideoPlayerWidget(
      {super.key, required this.url, required this.dataSourceType});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

enum DataSourceType {
  asset, //buat asset
  network, //klo dari inet
  file, //ada di local system
  contentUri, //khusus buat android
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.url);

    switch (widget.dataSourceType) {
      case DataSourceType.asset:
        _controller = VideoPlayerController.asset(widget.url);
        break;
      case DataSourceType.network:
        _controller = VideoPlayerController.networkUrl(Uri.parse(widget.url));
        break;
      case DataSourceType.file:
        _controller = VideoPlayerController.file(File(widget.url));
        break;
      case DataSourceType.contentUri:
        _controller = VideoPlayerController.contentUri(Uri.parse(widget.url));
        break;
    }

    _chewieController = ChewieController(
      videoPlayerController: _controller,
      aspectRatio: 16 / 9,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(30),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Chewie(controller: _chewieController),
          ),
        )
      ],
    );
  }
}
