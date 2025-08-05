import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/data/model/performance/performance_my_rank_model.dart';

var listPerformanceMyRank = [
  PerformanceMyRankModel(
    image: AssetUtil().path(path: 'example/example-Sky.png'),
    points: 100,
    status: 'stay',
    order: 6,
    title: 'Software Developer'
  ),
  PerformanceMyRankModel(
    image: AssetUtil().path(path: 'example/example-Unilever.png'),
    points: 95,
    status: 'up',
    order: 7,
    title: 'Software Developer'
  ),
  PerformanceMyRankModel(
    image: AssetUtil().path(path: 'example/example-user-profile.png'),
    points: 90,
    status: 'down',
    order: 8,
    title: 'Software Developer'
  ),
  PerformanceMyRankModel(
    image: AssetUtil().path(path: 'example/example-pertama.png'),
    points: 80,
    status: 'stay',
    order: 9,
    title: 'Software Developer'
  ),
];