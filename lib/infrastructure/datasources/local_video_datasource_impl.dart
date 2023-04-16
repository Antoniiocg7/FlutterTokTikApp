
import 'package:toktik/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/domain/entities/video_post.dart';

import '../../shared/data/local_video_posts.dart';
import '../models/local_video_model.dart';

class LocalVideoDatasource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavouriteVideosByUser(String userId) {

    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {

    Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map(
      (video) => LocalVideoModel.fromJson(video).toVideoPost()
    ).toList();

    return newVideos;
  }

}