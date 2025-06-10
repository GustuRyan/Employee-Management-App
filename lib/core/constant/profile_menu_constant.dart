import 'package:hr_360/core/config/routes.dart';
import 'package:hr_360/data/model/profile/profile_menu_model.dart';

final List<ProfileMenuModel> dataProfileMenuConstant = [
  ProfileMenuModel(title: 'Basic Information', route: profileBasicRoute),
  ProfileMenuModel(title: 'Company Information', route: profileCompanyRoute),
  ProfileMenuModel(
    title: 'Work Assign Information',
    route: profileWorkAssignRoute,
  ),
  ProfileMenuModel(title: 'BPJS Insurance', route: profileInsuranceRoute),
  ProfileMenuModel(title: 'SK Information', route: profileSkRoute),
  ProfileMenuModel(title: 'Bank Information', route: profileBankRoute),
  ProfileMenuModel(
    title: 'Resignation & Contract',
    route: profileContractRoute,
  ),
  ProfileMenuModel(title: 'Family', route: profileFamilyRoute),
  ProfileMenuModel(title: 'Competency', route: profileCompetencyRoute),
  ProfileMenuModel(title: 'Education', route: profileEducationRoute),
  ProfileMenuModel(title: 'Career Path', route: profileCareerRoute),
  ProfileMenuModel(title: 'Experience', route: profileExperienceRoute),
  ProfileMenuModel(title: 'Document', route: profileDocumentRoute),
];
