import 'package:cached_video_player_fork/cached_video_player.dart';
import 'package:flutter/material.dart';

class VideoCache extends StatefulWidget {
  const VideoCache({super.key});

  @override
  State<VideoCache> createState() => _VideoCacheState();
}

class _VideoCacheState extends State<VideoCache> {
  late CachedVideoPlayerController controller;

  @override
  void initState() {
    controller = CachedVideoPlayerController.network(
      "https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    );
    controller.initialize().then((value) {
      controller.play();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Video Cache"),
      ),
      body: Center(
          child: controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: CachedVideoPlayer(controller))
              : const CircularProgressIndicator()), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
