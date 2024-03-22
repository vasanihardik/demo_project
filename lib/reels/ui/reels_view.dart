import 'package:flutter/material.dart';
import 'package:quiz_demo/reels/reels_viewer.dart';
import 'package:quiz_demo/utils/string_const.dart';

class RealsView extends StatelessWidget {
  const RealsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ReelsViewer(
      reelsList: reelsList,
      appbarTitle: 'Instagram Reels',
      onShare: (url) {
        print('Shared reel url ==> $url');
      },
      onLike: (url) {
        print('Liked reel url ==> $url');
      },
      onFollow: () {
        print('======> Clicked on follow <======');
      },
      onComment: (comment) {
        print('Comment on reel ==> $comment');
      },
      onClickMoreBtn: () {
        print('======> Clicked on more option <======');
      },
      onClickBackArrow: () {
        print('======> Clicked on back arrow <======');
      },
      onIndexChanged: (index){
        print('======> Current Index ======> $index <========');
      },
      showProgressIndicator: true,
      showVerifiedTick: true,
      showAppbar: true,

    );
  }
}
