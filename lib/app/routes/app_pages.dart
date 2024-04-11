import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/tab_page/bindings/tab_page_binding.dart';
import '../modules/tab_page/views/tab_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TAB_PAGE,
      page: () => const TabPageView(),
      binding: TabPageBinding(),
    ),
  ];
}
