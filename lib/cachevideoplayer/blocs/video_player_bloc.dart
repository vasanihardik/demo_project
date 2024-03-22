import 'package:bloc/bloc.dart';
import 'package:quiz_demo/cachevideoplayer/blocs/video_player_event.dart';
import 'package:quiz_demo/cachevideoplayer/blocs/video_player_state.dart';
import 'package:quiz_demo/cachevideoplayer/services/video_controller_service.dart';

class VideoPlayerBloc extends Bloc<VideoPlayerEvent, VideoPlayerState> {
  final VideoControllerService _videoControllerService;

  VideoPlayerBloc(this._videoControllerService)
      : super(VideoPlayerStateInitial()) {
    on<VideoSelectedEvent>(_mapEventToState);
  }

  VideoPlayerState get initialState => VideoPlayerStateInitial();

  void _mapEventToState(
      VideoPlayerEvent event, Emitter<VideoPlayerState> emit) async {
    if (event is VideoSelectedEvent) {
      emit(VideoPlayerStateLoading());
      try {
        final videoController =
            await _videoControllerService.getControllerForVideo(event.video);
        emit(VideoPlayerStateLoaded(event.video, videoController));
      } catch (e) {
        emit(
            VideoPlayerStateError(e.toString()));
      }
    }
  }
}
