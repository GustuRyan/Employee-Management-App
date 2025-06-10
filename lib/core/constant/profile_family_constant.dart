import 'package:hr_360/core/utils/asset_util.dart';
import 'package:hr_360/data/model/profile/family/profile_family_model.dart';

final List<ProfileFamilyModel> dataProfileFamilyConstant = [
  ProfileFamilyModel(
    id: 1,
    familyType: 'Husband',
    name: 'Rizky Ananda Dwi Saputra',
    gender: 1,
    birthdate: '1994-06-29',
    address:
        'Jl Tukad Yeh Ho 36/2 Jadi Anyar, Kec. kediri, Kab. Tabanan, Bali, 821345',
    picture: AssetUtil().path(path: 'icon/icon-profile.png'),
  ),
  ProfileFamilyModel(
    id: 2,
    familyType: 'Wife',
    name: 'Yaniek Wijayanti',
    gender: 1,
    birthdate: '1994-01-29',
    address:
        'Jl Tukad Yeh Ho 36/2 Jadi Anyar, Kec. kediri, Kab. Tabanan, Bali, 82123',
    picture: AssetUtil().path(path: 'icon/icon-profile.png'),
  ),
];
