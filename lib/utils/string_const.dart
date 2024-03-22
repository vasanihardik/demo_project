import 'package:quiz_demo/reels/models/reel_comment_model.dart';
import 'package:quiz_demo/reels/models/reel_model.dart';

class Strings {
  static const String welcome_splash = "Welcome to \nStandard Process";
  static const String user_name = "Username";
  static const String password = "Password";
  static const String forgot_password = "Forgot Password";
  static const String forgot_username = "Forgot Username";
  static const String sign_in = 'Sign In';
}

class SquareViewModel {
  const SquareViewModel(this.imageUrl, this.content);

  final String imageUrl;
  final String content;
}

List<SquareViewModel> getSquareViewModel = [
  const SquareViewModel(
      "https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U",
      "Blood Sugar & Metabolism"),
  const SquareViewModel(
      "https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U",
      "Blood Sugar & Metabolism"),
  const SquareViewModel(
      "https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U",
      "Blood Sugar & Metabolism"),
  const SquareViewModel(
      "https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U",
      "Blood Sugar & Metabolism"),
  const SquareViewModel(
      "https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U",
      "Blood Sugar & Metabolism"),
  const SquareViewModel(
      "https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U",
      "Blood Sugar & Metabolism"),
  const SquareViewModel(
      "https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U",
      "Blood Sugar & Metabolism"),
  const SquareViewModel(
      "https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U",
      "Blood Sugar & Metabolism"),
  const SquareViewModel(
      "https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U",
      "Blood Sugar & Metabolism"),
  const SquareViewModel(
      "https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U",
      "Blood Sugar & Metabolism"),
  const SquareViewModel(
      "https://fastly.picsum.photos/id/237/200/300.jpg?hmac=TmmQSbShHz9CdQm0NkEjx1Dyh_Y984R9LpNrpvH2D_U",
      "Blood Sugar & Metabolism"),
];

List<ReelModel> reelsList = [
  ReelModel(
    'https://assets.mixkit.co/videos/preview/mixkit-young-mother-with-her-little-daughter-decorating-a-christmas-tree-39745-large.mp4',
    'Hardik',
  ),ReelModel(
    'https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
    'Hardik',
  ),ReelModel(
    'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4',
    'Vishal',
  ),ReelModel(
    'https://storage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4',
    'Ajay',
  ),
  ReelModel(
      'https://assets.mixkit.co/videos/preview/mixkit-tree-with-yellow-flowers-1173-large.mp4',
      'Darshan Patil',
      likeCount: 2000,
      isLiked: true,
      musicName: 'In the name of Love',
      reelDescription: "Life is better when you're laughing.",
      profileUrl:
          'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
      commentList: [
        ReelCommentModel(
          comment: 'Nice...',
          userProfilePic:
              'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
          userName: 'Darshan',
          commentTime: DateTime.now(),
        ),
        ReelCommentModel(
          comment: 'Superr...',
          userProfilePic:
              'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
          userName: 'Darshan',
          commentTime: DateTime.now(),
        ),
        ReelCommentModel(
          comment: 'Great...',
          userProfilePic:
              'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
          userName: 'Darshan',
          commentTime: DateTime.now(),
        ),
      ]),
  ReelModel(
    'https://assets.mixkit.co/videos/preview/mixkit-father-and-his-little-daughter-eating-marshmallows-in-nature-39765-large.mp4',
    'Rahul',
    musicName: 'In the name of Love',
    reelDescription: "Life is better when you're laughing.",
    profileUrl:
        'https://opt.toiimg.com/recuperator/img/toi/m-69257289/69257289.jpg',
  ),
  ReelModel(
    'https://assets.mixkit.co/videos/preview/mixkit-mother-with-her-little-daughter-eating-a-marshmallow-in-nature-39764-large.mp4',
    'Rahul',
  ),
  ReelModel(
    'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4',
    'Rahul',
  ),
];
