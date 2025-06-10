import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/data/model/home/home_menu_service_model.dart';

final List<HomeMenuServiceModel> dataHomeMenuServiceConstant = [
  HomeMenuServiceModel(
    title: 'Attendance',
    image: AssetUtil().path(path: 'icon/icon-menu-attendance.png'),
    route: attendanceRoute,
  ),
  HomeMenuServiceModel(
    title: 'Leave',
    image: AssetUtil().path(path: 'icon/icon-menu-leave.png'),
    route: leaveRoute,
  ),
  HomeMenuServiceModel(
    title: 'Overtime',
    image: AssetUtil().path(path: 'icon/icon-menu-overtime.png'),
    route: overtimeRoute,
  ),
  HomeMenuServiceModel(
    title: 'Payslip',
    image: AssetUtil().path(path: 'icon/icon-menu-payslip.png'),
    route: payslipRoute,
  ),
  HomeMenuServiceModel(
    title: 'Performance',
    image: AssetUtil().path(path: 'icon/icon-menu-performance.png'),
    route: performanceRoute,
  ),
  HomeMenuServiceModel(
    title: 'Training',
    image: AssetUtil().path(path: 'icon/icon-menu-training.png'),
    route: trainingRoute,
  ),
  HomeMenuServiceModel(
    title: 'Warning',
    image: AssetUtil().path(path: 'icon/icon-menu-warning.png'),
    route: warningRoute,
  ),
  HomeMenuServiceModel(
    title: 'Reward',
    image: AssetUtil().path(path: 'icon/icon-menu-reward.png'),
    route: rewardRoute,
  ),
  HomeMenuServiceModel(
    title: 'Career',
    image: AssetUtil().path(path: 'icon/icon-menu-career.png'),
    route: careerRoute,
  ),
  HomeMenuServiceModel(
    title: 'Recruitment',
    image: AssetUtil().path(path: 'icon/icon-menu-recruitment.png'),
    route: recruitmentRoute,
  ),
];
