import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/data/model/intro/intro_model.dart';

final List<IntroModel> dataIntroConstant = [
  IntroModel(
    title: 'HR 360, Touchless attendance & interaction at workspace',
    description:
        "Touchless attendance using QR make it easier to do the attendance process",
    image: AssetUtil().path(path: 'example/example-intro-1.png'),
  ),
   IntroModel(
    title: 'Integrated with maps to find the best route',
    description:
        "Find the best route to the workplace help employees to manage their time",
    image: AssetUtil().path(path: 'example/example-intro-2.png'),
  ),
   IntroModel(
    title: 'Employee databank system and management',
    description:
        "Integrated with employe databank system to find all employe information",
    image: AssetUtil().path(path: 'example/example-intro-3.png'),
  ),
  IntroModel(
    title: 'Protection for all company team members',
    description:
        "Connect with all company team member in one platform to maximize productivity",
    image: AssetUtil().path(path: 'example/example-intro-4.png'),
  ),
];
