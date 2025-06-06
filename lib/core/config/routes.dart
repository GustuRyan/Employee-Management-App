// Main Routes
// Init
const String splashScreenRoute = '/';
const String introRoute = '/intro';

// Auth
const String authRoute = '/auth';
const String authRegisterRoute = '/auth-register';
const String authForgetPasswordRoute = '/auth-forget-password';
const String authVerificationRoute = '/auth-verification';
const String authVerificationSuccessRoute = '/auth-verification-success';

// Home
const String homeRoute = '/home';
// Menu
const String attendanceRoute = '/attendance';

const String leaveRoute = '/leave';
const String leaveAddRoute = '/leave/add';
const String leaveCreateRoute = '/leave/create';
const String leaveFilterRoute = '/leave/filter';
const String leaveDetailListRoute = '/leave/detail-list';
class LeaveDetailRoutes {
  static const String leaveDetailTemplate = '/leave/detail/:id';

  static String leaveDetailRoute(int id) => '/leave/detail/$id';
}

const String overtimeRoute = '/overtime';
const String payslipRoute = '/payslip';

const String performanceRoute = '/performance';
const String performanceFiltersRoute = '/performance/filters';
const String performanceAddRoute = '/performance/add';
class PerformanceDetailRoutes {
  static const String performanceDetailTemplate = '/performance/detail/:id';

  static String performanceDetailRoute(int id) => '/performance/detail/$id';
}

const String trainingRoute = '/training';
const String trainingAddRoute = '/training/add';
const String trainingAddPlanRoute = '/training/add/plan';
const String trainingAddScheduleRoute = '/training/add/schedule';
const String trainingFilterRoute = '/training/filter';
const String trainingQrScannerRoute = '/training/qr-scanner';
const String trainingAddAttendanceRoute = '/training/add/attendance';
const String trainingAttendanceRoute = '/training/attendance';

const String warningRoute = '/warning';
const String rewardRoute = '/reward';
const String careerRoute = '/career';
const String recruitmentRoute = '/recruitment';

//Working Schedule
const String workingScheduleRoute = '/working-schedule';

// Profile
const String profileRoute = '/profile';
const String profileBasicRoute = '/profile-basic';
const String profileBasicUpdateRoute = '/profile-basic/update';
const String profileCompanyRoute = '/profile-company';
const String profileCompanyUpdateRoute = '/profile-company/update';
const String profileWorkAssignRoute = '/profile-work-assign';
const String profileWorkAssignUpdateRoute = '/profile-work-assign/update';
const String profileInsuranceRoute = '/profile-insurance';
const String profileSkRoute = '/profile-sk';
const String profileBankRoute = '/profile-bank';
const String profileContractRoute = '/profile-contract';
const String profileFamilyRoute = '/profile-family';
const String profileCompetencyRoute = '/profile-competency';
const String profileEducationRoute = '/profile-education';
const String profileCareerRoute = '/profile-career';
const String profileExperienceRoute = '/profile-experience';
const String profileDocumentRoute = '/profile-document';
