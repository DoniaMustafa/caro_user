
import 'package:caro_user_app/core/extension.dart';
import 'package:caro_user_app/features/login/presentation/pages/login_page.dart';
import 'package:caro_user_app/features/signup/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/utils/app_colors.dart';
import '../../features/onboarding/presentation/pages/onboarding_page.dart';
import '../../features/splash.dart';

enum PageRouteAnimation { Fade, Scale, Rotate, Slide, SlideBottomTop }

class Routes {
  Routes._internal();
  static const String splashRoute = "/";
  static const String coursesGroupsRoute = "Courses  Screen";
  static const String addSessionRoute = "add Session";
  static const String statisticsGroupsRoute = "statisticsGroupsRoute";

  static const String statisticsRoute = "/Statistics Route";
  static const String statisticsCoursesRoute = "StatisticsCourses";
  //
  static const String updateGroupRoute = "update  Group";
  static const String updateSessionOfGroupRoute = "update Session Of Group";

  static const String mainRoute = "/main Route";
  static const String loginRoute = "/login Route";
  static const String chooseRoleRoute = "/choose Role";
  static const String signUpRoute = "sign Up";
  static const String onBoardRoute = "/Route onBoard";
  static const String uploadResumeRoute = "upload Resume Route ";
  static const String signUpPyPhoneRoutes = "signUpPyPhoneRoutes";

  static const String educationTypeRoute = " education Type ";
  static const String assistantEducationTypeRoute = "assistant education Type ";

  static const String forgetPassRoute = "forget Password";
  static const String verificationRoute = "/verification";
  static const String resetPasswordRoute = "/reset_passsword";
  static const String bottomNavigationRoute = "bottom Navigation Route";
  static const String setPassRoute = "set Password";
  static const String selectLanguageRoute = "/select language";
  //NewTripsScreen
  static const String notificationsRoute = "/notification Route";
  static const String lessonDetailsRoute = "/ Lesson Details";
  static const String coursesDetailsRoute = "Courses Details";
  static const String groupsLessonRoute = "Groups Lesson Details";

  static const String groupsDetailsRoute = "groups Details";
  static const String chooseProfessionalCourseRoute =
      "choose Professional Course Route";
  static const String teacherFollowersRoute = "teacherFollowersRoute";
  static const String addLessonOfCourseRoute = "AddLessonOfCourse";
  static const String updateLessonOfCourseRoute = "updateLessonOfCourseRoute";
  // static const String updateLessonOfCourseRoute = "updateLessonOfCourseRoute";
  //
  // QuestionsDetailsScreen

  static const String publicCoursesGroupsRoute = "Public Courses Groups";
  static const String profileRoute = "profile Route";
  static const String followingTeachersRoute = "followingTeachers Route";
  static const String subscriptionOfCourseDetailsRoute =
      "subscription of Course Details";

  static const String teacherOfParentDetailsScreenRoute =
      "PrivateTeacherDetails";
  static const String topStudentRoute = "TopStudent";

  ///*********************************************************************************\\\

  static const String teachersOfParentRoute = "Teacher Parent Screen";

  static const String teacherDetailsRoute = "Teacher Details Screen";
  static const String teachersRoute = "/Teachers";
  static const String aboutUsRoute = "/ aboutUs";
  static const String favoriteCourseVideoRoute = "/ favorite Course Video";
  // static const String privateTeacherDetailsRoute = "privateTeacherDetailsRoute";
  static const String subscriptionGroupDetailsRoute =
      "Subscription Group Details";
  static const String settingsRoute = "settings Route";
  //
  static const String bookingDateRoute = "Booking Date";

  //
  static const String studentGroupSessionsRoute = "student Group Sessions";
  //
  static const String termsAndConditionRoute = "Terms And Condition";

  static const String resultExamRoute = "result Exam route";

  static const String nearSchoolDetailsRoute = "near School Details route";
  static const String adsDetailsRoute = "ads Details Route";
  static const String studentTasksRoute = "student Tasks Route";
  static const String personalInformation = "personalInfo";
  static const String editPersonalInformation = "editPersonalInformation";
  static const String fqs = "fqs";
  static const String privacyRoute = "privacy";
  static const String examsRoute = "exams Route";
  static const String passedExamRoute = "Passed Exam";
  static const String myGradesRoute = "my Grades Route";
  static const String pdfRoute = 'Pdf';
  static const String notesRoute = 'Notes';
  static const String publicNotesRoute = 'publicNotesRoute';
  static const String notesBookedUnbookedRoute = 'notes Booked Unbooked';
  static const String notesDetailsRoute = 'Notes Details Screen';
  static const String reserveNoteRoute = "reserve Note Route";
  static const String videoOfSessionRoute = "video Of Session Route";
  static const String updateUserProfileRoute =
      "update User Profile ScreenRoute";
  static const String privateGroupsRoute = "private Groups";
  static const String privateTeacherGroupsDetailsRoute =
      "private Groups Details";

  static const String bookPrivateAppointmentGroupsRoute =
      'bookPrivateAppointmentGroupsRoute';
  static const String examQuestionRoute = 'ExamQuestionScreen';
  static const String parentsRoute = 'Parents Screen';
  static const String studentForParentDetailsRoute =
      'Student For Parent Details';

  static const String addParentChildrenRoute = 'add Parents Children';

  static const String addParentRoute = 'add Parents Screen';

  static const String liveRoute = 'Live Screen';
  static const String teacherLiveRoute = 'teacher Live Route ';
  static const String chatMassagesRoute = 'chatMassagesRoute';
  //
  static const String youtueWidgetRoute = 'YoutueWidget';

  static const String parentsDetailsRoute = 'parentsDetailsRoute';
  //
  static const String homeWorkRoute = 'homeWorkScreen';
  //
  static const String parentChildrenRoute = 'parentChildrenRoute';

  static const String updateLiveRoute = 'update Live ';

  static const String liveTableRoute = 'Live Table Screen';
  static const String createLiveRoute = 'Create Live Screen';
  static const String addGroupRoute = 'add Group';
  static const String addExamRoute = 'Add Exam';

  static const String updateExamRoute = 'update Exam';

  static const String updateCourseRoute = 'updateCourseRoute';

  static const String addCourseRoute = 'add Course';
  static const String groupsDetailsOfTeacherRoute = 'Group Of Teacher Details';
  static const String assistantForTeacherRoute = 'assistantForTeacher';
  static const String assistantForTeacherDetailsRoute =
      'assistantForTeacherDetailsRoute Screen';
  static const String addTeacherForStudentRoute = 'addTeacherForStudentRoute';

  static const String studentForTeacherDetailsRoute =
      'studentForTeacherDetails';
  static const String teacherAssistantToSubmitRequestRoute =
      'TeacherAssistantToSubmitRequest';
  static const String teacherCoursesDetailsRoute = 'teacherCoursesDetails';
  static const String addOrUpdateNoteRoute = 'add Or Update Note';
  static const String updateQuestionsRoute = 'updateQuestionsRoute';
  static const String statisticsExamRoute = 'statistics Exam';
  static const String addQuestionsRoute = 'addQuestionsRoute';
  static const String questionsRoute = 'Questions';
  static const String transferBalanceRoute = 'TransferBalance';
  static const String questionsDetailsRoute = 'questions Details';
  static const String examDetailsRoute = 'examDetailsRoute';

  static const String teacherForAssistantRoute = 'teacherForAssistantRoute';
}

class RouteGenerator {
  RouteGenerator._internal();
  PageRouteAnimation? pageRouteAnimationGlobal;
  static Duration pageRouteTransitionDurationGlobal = 100.milliseconds;
  static Route<dynamic>? getRoute(RouteSettings routeSettings) {
    debugPrint(routeSettings.name);
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return buildPageRoute(
            child: const SplashScreen(), routeSettings: routeSettings);
      case Routes.onBoardRoute:
        return buildPageRoute(
            child:const OnboardingPage(), routeSettings: routeSettings);
      case Routes.signUpRoute:
        return buildPageRoute(
            child: const SignupPage(), routeSettings: routeSettings);
      
      case Routes.loginRoute:
        return buildPageRoute(
            child: const LoginPage(), routeSettings: routeSettings);
      
      // case Routes.mainRoute:
      //   return buildPageRoute(
      //       child: const MainRegisterScreen(), routeSettings: routeSettings);
      // case Routes.chooseRoleRoute:
      //   return buildPageRoute(
      //       child: const ChooseRoleScreen(), routeSettings: routeSettings);
      // case Routes.signUpRoute:
      //   return buildPageRoute(
      //       child: SignUpScreen(), routeSettings: routeSettings);
      //
      // case Routes.groupsDetailsRoute:
      //   return buildPageRoute(
      //       child: GroupsDetailsScreen(), routeSettings: routeSettings);
      // // case Routes.pdfRoute:
      // //   return buildPageRoute(child: OpenFile(), routeSettings: routeSettings);
      // case Routes.uploadResumeRoute:
      //   return buildPageRoute(
      //       child: UploadResumeScreen(), routeSettings: routeSettings);
      // case Routes.signUpPyPhoneRoutes:
      //   return buildPageRoute(
      //       child: SignUpByPhoneScreen(), routeSettings: routeSettings);
      // case Routes.verificationRoute:
      //   return buildPageRoute(
      //       child: VerificationScreen(), routeSettings: routeSettings);
      // case Routes.privateTeacherGroupsDetailsRoute:
      //   return buildPageRoute(
      //       child: PrivateTeacherDetailsScreen(), routeSettings: routeSettings);
      //
      // // privateTeacherDetailsScreen
      // case Routes.forgetPassRoute:
      //   return buildPageRoute(
      //       child: ForgetPasswordScreen(), routeSettings: routeSettings);
      // case Routes.chooseProfessionalCourseRoute:
      //   return buildPageRoute(
      //       child: const ChooseProfessionalCoursesScreen(),
      //       routeSettings: routeSettings);
      // case Routes.bottomNavigationRoute:
      //   return buildPageRoute(
      //       child: const BottomNavBarScreen(), routeSettings: routeSettings);
      // case Routes.coursesDetailsRoute:
      //   return buildPageRoute(
      //       child: CoursesDetailsScreen(), routeSettings: routeSettings);
      // case Routes.lessonDetailsRoute:
      //   return buildPageRoute(
      //       child: const LessonDetailsScreen(), routeSettings: routeSettings);
      // case Routes.groupsLessonRoute:
      //   return buildPageRoute(
      //       child: const GroupsLessonDetailsScreen(),
      //       routeSettings: routeSettings);
      // case Routes.profileRoute:
      //   return buildPageRoute(
      //       child: const ProfileScreen(), routeSettings: routeSettings);
      // case Routes.resetPasswordRoute:
      //   return buildPageRoute(
      //       child: ResetPasswordScreen(), routeSettings: routeSettings);
      // case Routes.updateGroupRoute:
      //   return buildPageRoute(
      //       child: UpdateGroupScreen(), routeSettings: routeSettings);
      // case Routes.updateSessionOfGroupRoute:
      //   return buildPageRoute(
      //       child: UpdateSessionScreen(), routeSettings: routeSettings);
      // case Routes.publicCoursesGroupsRoute:
      //   return buildPageRoute(
      //       child: const PublicCoursesGroupsScreen(),
      //       routeSettings: routeSettings);
      // case Routes.subscriptionOfCourseDetailsRoute:
      //   return buildPageRoute(
      //       child: SubscriptionOfCourseDetailsScreen(),
      //       routeSettings: routeSettings);
      // case Routes.favoriteCourseVideoRoute:
      //   return buildPageRoute(
      //       child: const FavoriteScreen(), routeSettings: routeSettings);
      // case Routes.transferBalanceRoute:
      //   return buildPageRoute(
      //       child: TransferBalanceScreen(), routeSettings: routeSettings);
      // case Routes.teacherDetailsRoute:
      //   return buildPageRoute(
      //       child: TeacherDetailsScreen(), routeSettings: routeSettings);
      // case Routes.teachersOfParentRoute:
      //   return buildPageRoute(
      //       child: TeachersOfParentScreen(), routeSettings: routeSettings);
      //
      // case Routes.teacherOfParentDetailsScreenRoute:
      //   return buildPageRoute(
      //       child: TeacherForParentDetailsScreen(),
      //       routeSettings: routeSettings);
      // case Routes.teachersRoute:
      //   return buildPageRoute(
      //       child: const TeachersScreen(), routeSettings: routeSettings);
      // //
      // case Routes.educationTypeRoute:
      //   return buildPageRoute(
      //       child: EducationTypeScreen(), routeSettings: routeSettings);
      // case Routes.termsAndConditionRoute:
      //   return buildPageRoute(
      //       child: const TermsConditionScreen(), routeSettings: routeSettings);
      // //
      // case Routes.assistantEducationTypeRoute:
      //   return buildPageRoute(
      //       child: BuildEducationOfAssistant(), routeSettings: routeSettings);
      //
      // case Routes.aboutUsRoute:
      //   return buildPageRoute(
      //       child: AboutUsScreen(), routeSettings: routeSettings);
      // case Routes.subscriptionGroupDetailsRoute:
      //   return buildPageRoute(
      //       child: SubscriptionGroupDetailsScreen(),
      //       routeSettings: routeSettings);
      // case Routes.privacyRoute:
      //   return buildPageRoute(
      //       child: const PrivacyPolicyScreen(), routeSettings: routeSettings);
      // case Routes.studentGroupSessionsRoute:
      //   return buildPageRoute(
      //       child: StudentGroupSessionsScreen(), routeSettings: routeSettings);
      // case Routes.bookingDateRoute:
      //   return buildPageRoute(
      //       child: BookingAppointmentGroupScreen(),
      //       routeSettings: routeSettings);
      // //
      // case Routes.nearSchoolDetailsRoute:
      //   return buildPageRoute(
      //       child: NearSchoolDetailsScreen(), routeSettings: routeSettings);
      // // //
      // case Routes.adsDetailsRoute:
      //   return buildPageRoute(
      //       child: AdsDetailsScreen(), routeSettings: routeSettings);
      // //
      // case Routes.examsRoute:
      //   return buildPageRoute(
      //       child: ExamsScreen(), routeSettings: routeSettings);
      // case Routes.studentTasksRoute:
      //   return buildPageRoute(
      //       child: StudentTasksScreen(), routeSettings: routeSettings);
      // // case Routes.resultExamRoute:
      // //   return buildPageRoute(
      // //       child: ResultExamScreen(), routeSettings: routeSettings);
      //
      // case Routes.passedExamRoute:
      //   return buildPageRoute(
      //     child: PassedExamScreen(),
      //     routeSettings: routeSettings,
      //   );
      // //
      // case Routes.myGradesRoute:
      //   return buildPageRoute(
      //       child: MyGradesScreen(), routeSettings: routeSettings);
      // case Routes.addQuestionsRoute:
      //   return buildPageRoute(
      //       child: AddQuestionsScreen(), routeSettings: routeSettings);
      // case Routes.questionsRoute:
      //   return buildPageRoute(
      //       child: QuestionsScreen(), routeSettings: routeSettings);
      // case Routes.questionsDetailsRoute:
      //   return buildPageRoute(
      //       child: QuestionsDetailsScreen(), routeSettings: routeSettings);
      // case Routes.examDetailsRoute:
      //   return buildPageRoute(
      //       child: ExamDetailsScreen(), routeSettings: routeSettings);
      //
      // case Routes.notesBookedUnbookedRoute:
      //   return buildPageRoute(
      //       child: const NotesBookedUnbookedScreen(),
      //       routeSettings: routeSettings);
      // //
      // case Routes.loginRoute:
      //   return buildPageRoute(
      //       child: LoginScreen(), routeSettings: routeSettings);
      // //
      // //
      // case Routes.notesRoute:
      //   return buildPageRoute(
      //       child: NotesScreen(), routeSettings: routeSettings);
      // case Routes.publicNotesRoute:
      //   return buildPageRoute(
      //       child: PublicNoteScreen(), routeSettings: routeSettings);
      //
      // // //*************************** settings rout ********************************/
      // //
      // case Routes.parentChildrenRoute:
      //   return buildPageRoute(
      //       // child: MultiBlocProvider(
      //       //   providers: [
      //       //     BlocProvider<AcceptParentStudentRequestCubit>(
      //       //       create: (context) =>
      //       //           ServiceLocator().getIt<AcceptParentStudentRequestCubit>(),
      //       //     ),
      //       //     BlocProvider<AddParentRequestStudentCubit>(
      //       //         create: (context) =>
      //       //             ServiceLocator().getIt<AddParentRequestStudentCubit>()),
      //       //     BlocProvider<RejectParentStudentRequestCubit>(
      //       //         create: (context) => ServiceLocator()
      //       //             .getIt<RejectParentStudentRequestCubit>()),
      //       //   ],
      //       child: ParentChildrenScreen(),
      //       // ),
      //       routeSettings: routeSettings);
      //
      // case Routes.notesDetailsRoute:
      //   return buildPageRoute(
      //       child: NotesDetailsScreen(), routeSettings: routeSettings);
      // //   //
      // case Routes.reserveNoteRoute:
      //   return buildPageRoute(
      //       child: ReserveNoteScreen(), routeSettings: routeSettings);
      // //   //
      // case Routes.videoOfSessionRoute:
      //   return buildPageRoute(
      //       child: VideoOfSessionScreen(), routeSettings: routeSettings);
      // //   //
      // case Routes.updateUserProfileRoute:
      //   return buildPageRoute(
      //       child: UpdateUserProfileScreen(), routeSettings: routeSettings);
      // //   //
      // case Routes.privateGroupsRoute:
      //   return buildPageRoute(
      //       child: PrivateGroupsScreen(), routeSettings: routeSettings);
      // //   //
      // case Routes.bookPrivateAppointmentGroupsRoute:
      //   return buildPageRoute(
      //       child: BookPrivateAppointmentScreen(),
      //       routeSettings: routeSettings);
      // //   //
      // case Routes.examQuestionRoute:
      //   return buildPageRoute(
      //       child: ExamQuestionScreen(), routeSettings: routeSettings);
      // case Routes.addParentRoute:
      //   return buildPageRoute(
      //       child: AddParentScreen(), routeSettings: routeSettings);
      // case Routes.addParentChildrenRoute:
      //   return buildPageRoute(
      //       child: AddChildrenForParentScreen(), routeSettings: routeSettings);
      //
      // case Routes.parentsRoute:
      //   return buildPageRoute(
      //       child: ParentsScreen(), routeSettings: routeSettings);
      // case Routes.homeWorkRoute:
      //   return buildPageRoute(
      //       child: HomeWorkScreen(), routeSettings: routeSettings);
      // case Routes.liveRoute:
      //   return buildPageRoute(
      //       child: StartedLiveScreen(), routeSettings: routeSettings);
      //
      // case Routes.followingTeachersRoute:
      //   return buildPageRoute(
      //       child: FollowingTeachersScreen(), routeSettings: routeSettings);
      // //
      // case Routes.teacherFollowersRoute:
      //   return buildPageRoute(
      //       child: TeacherFollowersScreen(), routeSettings: routeSettings);
      // case Routes.addLessonOfCourseRoute:
      //   return buildPageRoute(
      //       child: AddLessonOfCourseScreen(), routeSettings: routeSettings);
      //
      // case Routes.updateLessonOfCourseRoute:
      //   return buildPageRoute(
      //       child: UpdateLessonOfCourseScreen(), routeSettings: routeSettings);
      // case Routes.updateQuestionsRoute:
      //   return buildPageRoute(
      //       child: UpdateQuestionsScreen(), routeSettings: routeSettings);
      // case Routes.statisticsCoursesRoute:
      //   return buildPageRoute(
      //       child: StatisticsCoursesScreen(), routeSettings: routeSettings);
      // case Routes.statisticsGroupsRoute:
      //   return buildPageRoute(
      //       child: StatisticsGroupsScreen(), routeSettings: routeSettings);
      //
      // case Routes.chatMassagesRoute:
      //   return buildPageRoute(
      //       child: ChatGroupMassagesScreen(), routeSettings: routeSettings);
      // //
      // case Routes.addSessionRoute:
      //   return buildPageRoute(
      //       child: AddSessionScreen(), routeSettings: routeSettings);
      //
      // case Routes.updateLiveRoute:
      //   return buildPageRoute(
      //       child: UpdateLiveScreen(), routeSettings: routeSettings);
      //
      // case Routes.liveTableRoute:
      //   return buildPageRoute(
      //       child: LivesScreen(), routeSettings: routeSettings);
      // case Routes.statisticsRoute:
      //   return buildPageRoute(
      //       child: StatisticsScreen(), routeSettings: routeSettings);
      // case Routes.createLiveRoute:
      //   return buildPageRoute(
      //       child: CreateLiveScreen(), routeSettings: routeSettings);
      // case Routes.addGroupRoute:
      //   return buildPageRoute(
      //       child: AddGroupScreen(), routeSettings: routeSettings);
      // case Routes.addCourseRoute:
      //   return buildPageRoute(
      //       child: AddCourseScreen(), routeSettings: routeSettings);
      // case Routes.updateCourseRoute:
      //   return buildPageRoute(
      //       child: UpdateCourseScreen(), routeSettings: routeSettings);
      //
      // case Routes.updateExamRoute:
      //   return buildPageRoute(
      //       child: UpdateExamScreen(), routeSettings: routeSettings);
      //
      // case Routes.addExamRoute:
      //   return buildPageRoute(
      //       child: AddExamScreen(), routeSettings: routeSettings);
      //
      // case Routes.groupsDetailsOfTeacherRoute:
      //   return buildPageRoute(
      //       child: GroupOfTeacherDetailsScreen(), routeSettings: routeSettings);
      // case Routes.assistantForTeacherRoute:
      //   return buildPageRoute(
      //       child: AssistantForTeacherScreen(), routeSettings: routeSettings);
      // case Routes.assistantForTeacherDetailsRoute:
      //   return buildPageRoute(
      //       child: AssistantForTeacherDetailsScreen(),
      //       routeSettings: routeSettings);
      // case Routes.addTeacherForStudentRoute:
      //   return buildPageRoute(
      //       child: AddStudentForTeacherScreen(), routeSettings: routeSettings);
      //
      // case Routes.studentForParentDetailsRoute:
      //   return buildPageRoute(
      //       child: MultiBlocProvider(
      //         providers: [
      //           BlocProvider<StudentDetailsForTeacherCubit>(
      //             create: (context) =>
      //                 ServiceLocator().getIt<StudentDetailsForTeacherCubit>()
      //                   ..getStudentDetailsForTeacherRequest(
      //                       requestId: (routeSettings.arguments
      //                           as Map<String, dynamic>)['requestId']),
      //           ),
      //         ],
      //         child: StudentForParentDetailsScreen(),
      //       ),
      //       routeSettings: routeSettings);
      // case Routes.studentForTeacherDetailsRoute:
      //   return buildPageRoute(
      //       child: MultiBlocProvider(
      //         providers: [
      //           BlocProvider<StudentDetailsForTeacherCubit>(
      //             create: (context) =>
      //                 ServiceLocator().getIt<StudentDetailsForTeacherCubit>()
      //                   ..getStudentDetailsForTeacherRequest(
      //                       requestId: (routeSettings.arguments
      //                           as Map<String, dynamic>)['requestId']),
      //           ),
      //         ],
      //         child: StudentForTeacherDetailsScreen(),
      //       ),
      //       routeSettings: routeSettings);
      // case Routes.teacherAssistantToSubmitRequestRoute:
      //   return buildPageRoute(
      //       child: const TeacherAssistantToSubmitRequestScreen(),
      //       routeSettings: routeSettings);
      //
      // //
      // //
      //
      // case Routes.teacherForAssistantRoute:
      //   return buildPageRoute(
      //       child: TeacherForAssistantScreen(), routeSettings: routeSettings);
      //
      // case Routes.teacherCoursesDetailsRoute:
      //   return buildPageRoute(
      //       child: TeacherCoursesDetailsScreen(), routeSettings: routeSettings);
      // case Routes.addOrUpdateNoteRoute:
      //   return buildPageRoute(
      //       child: AddOrUpdateNoteScreen(), routeSettings: routeSettings);
      // case Routes.topStudentRoute:
      //   return buildPageRoute(
      //       child: TopStudentScreen(), routeSettings: routeSettings);
      //
      // case Routes.settingsRoute:
      //   return buildPageRoute(
      //       child: SettingsScreen(), routeSettings: routeSettings);
    }
    return buildPageRoute(
        child: const Center(
          child: Text("no route found"),
        ),
        routeSettings: routeSettings);
  }

  static Route<T> buildPageRoute<T>({
    required Widget child,
    PageRouteAnimation? pageRouteAnimation,
    Duration? duration,
    RouteSettings? routeSettings,
  }) {
    pageRouteAnimation = pageRouteAnimation ?? PageRouteAnimation.Scale;
    if (pageRouteAnimation == PageRouteAnimation.Fade) {
      return PageRouteBuilder(
        settings: routeSettings,
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
        reverseTransitionDuration: const Duration(milliseconds: 50),
        pageBuilder: (context, a1, a2) =>
            // BlocBuilder<LanguageCubit, LanguageState>(
          // builder: (context, state) {
             child,
            //   Directionality(
            //     textDirection: context.read<LanguageCubit>().isEn
            //         ? TextDirection.ltr
            //         : TextDirection.rtl,
            //     child:
            // ),
        //   },
        // ),
        transitionsBuilder: (c, anim, a2, child) {
          return FadeTransition(opacity: anim, child: child);
        },
      );
    } else if (pageRouteAnimation == PageRouteAnimation.Rotate) {
      return PageRouteBuilder(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) =>child,
        //     BlocBuilder<LanguageCubit, LanguageState>(
        //   builder: (context, state) {
        //     return Directionality(
        //         textDirection: context.read<LanguageCubit>().isEn
        //             ? TextDirection.ltr
        //             : TextDirection.rtl,
        //         child: child);
        //   },
        // ),
        transitionsBuilder: (c, anim, a2, child) {
          return RotationTransition(
              turns: ReverseAnimation(anim),
              child: child);
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    } else if (pageRouteAnimation == PageRouteAnimation.Scale) {
      return PageRouteBuilder(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) =>child,
        //     BlocBuilder<LanguageCubit, LanguageState>(
        //   builder: (context, state) {
        //     return Directionality(
        //         textDirection: context.read<LanguageCubit>().isEn
        //             ? TextDirection.ltr
        //             : TextDirection.rtl,
        //         child: child);
        //   },
        // ),
        transitionsBuilder: (c, anim, a2, child) {
          return ScaleTransition(scale: anim, child: child);
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    } else if (pageRouteAnimation == PageRouteAnimation.Slide) {
      return PageRouteBuilder(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) =>child,
        //     BlocBuilder<LanguageCubit, LanguageState>(
        //   builder: (context, state) {
        //     return Directionality(
        //         textDirection: context.read<LanguageCubit>().isEn
        //             ? TextDirection.ltr
        //             : TextDirection.rtl,
        //         child: child);
        //   },
        // ),
        transitionsBuilder: (c, anim, a2, child) {
          return SlideTransition(
            position: Tween(
              begin: const Offset(1.0, 0.0),
              end: const Offset(0.0, 0.0),
            ).animate(anim),
            child: child,
          );
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    } else if (pageRouteAnimation == PageRouteAnimation.SlideBottomTop) {
      return PageRouteBuilder(
        settings: routeSettings,
        pageBuilder: (context, a1, a2) =>child,
        //     BlocBuilder<LanguageCubit, LanguageState>(
        //   builder: (context, state) {
        //     return Directionality(
        //         textDirection: context.read<LanguageCubit>().isEn
        //             ? TextDirection.ltr
        //             : TextDirection.rtl,
        //         child: child);
        //   },
        // ),
        transitionsBuilder: (c, anim, a2, child) {
          return SlideTransition(
            position: Tween(
              begin: const Offset(0.0, 1.0),
              end: const Offset(0.0, 0.0),
            ).animate(anim),
            child: child,
          );
        },
        transitionDuration: duration ?? pageRouteTransitionDurationGlobal,
      );
    }
      return MaterialPageRoute<T>(
      builder: (context) => AnnotatedRegion<SystemUiOverlayStyle>(
          value: const SystemUiOverlayStyle(
            statusBarColor: AppColors.transparent,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
          ),
          child:child,
          // BlocBuilder<LanguageCubit, LanguageState>(
          //   builder: (context, state) {
          //     return Directionality(
          //         textDirection: context.read<LanguageCubit>().isEn
          //             ? TextDirection.ltr
          //             : TextDirection.rtl,
          //         child: child);
          //   },
          // )
      ),
      settings: routeSettings,
    );
  }
}
