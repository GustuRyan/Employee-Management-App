import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/data/model/profile/experience/profile_experience_model.dart';

final List<ProfileExperienceModel> dataProfileExperienceConstant = [
  ProfileExperienceModel(
    id: 1,
    experienceType: 'Mobile Developer',
    name: 'DPMPTSP Kabupaten Badung',
    status: 'Contract Completed',
    picture: AssetUtil().path(path: 'logo/hr-360.png'),
    startDate: '2018-05-15',
    finishDate: '2024-01-01',
  ),
];
