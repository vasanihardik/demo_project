import 'package:equatable/equatable.dart';
import 'package:quiz_demo/cachevideoplayer/model/video.dart';


abstract class VideoPlayerEvent extends Equatable{
  @override
  List<Object> get props => const [];
}

class VideoSelectedEvent extends VideoPlayerEvent{
  final Video video;

  VideoSelectedEvent(this.video);

  @override
  List<Object> get props => [video];
}