import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

const ASPECT_RATIO = 1 / 3;

class VideoPlayerWidget extends StatefulWidget {
  final VideoPlayerController controller;
  final String videoTitle;

  const VideoPlayerWidget({
    super.key,
    required this.controller,
    required this.videoTitle,
  });

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {

  late ChewieController _chewieController;
  @override
  void initState() {
    _chewieController = ChewieController(
      videoPlayerController: widget.controller,
      autoInitialize: true,
      autoPlay: true,
      showControls: false,
      deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp],
      materialProgressColors: ChewieProgressColors(
        playedColor: Colors.purple,
        handleColor: Colors.purple,
        backgroundColor: Colors.grey,
        bufferedColor: Colors.purple,
      ),
      placeholder: Container(
        color: Colors.grey,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return getVideoView();
    /*return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Chewie(
          controller: _chewieController,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            widget.videoTitle,
            ),
        ),
      ],
    );*/
  }

  @override
  void dispose() {
    widget.controller.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  Widget getVideoView() {
    return Stack(
      fit: StackFit.expand,
      children: [
            _chewieController.videoPlayerController.value.isInitialized
            ? FittedBox(
          fit: BoxFit.cover,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GestureDetector(
              child: Chewie(
                controller: _chewieController,
              ),
            ),
          ),
        )
            : const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 10),
            Text('Loading...')
          ],
        ),
        if (true)
          Positioned(
            bottom: 0,
            width: MediaQuery.of(context).size.width,
            child: VideoProgressIndicator(
              widget.controller,
              allowScrubbing: false,
              colors: const VideoProgressColors(
                backgroundColor: Colors.blueGrey,
                bufferedColor: Colors.blueGrey,
                playedColor: Colors.blueAccent,
              ),
            ),
          ),
        /*ScreenOptions(
          onClickMoreBtn: widget.onClickMoreBtn,
          onComment: widget.onComment,
          onFollow: widget.onFollow,
          onLike: widget.onLike,
          onShare: widget.onShare,
          showVerifiedTick: widget.showVerifiedTick,
          item: widget.item,
        )*/
      ],
    );
  }
}
