import 'package:auto_route/auto_route.dart';
import 'package:chemicalspraying/router/routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          path: '/register',
          page: RegisterRoute.page,
        ),
        CustomRoute(
          path: '/login',
          page: LoginRoute.page,
          initial: true,
        ),
        CustomRoute(
          path: '/home',
          page: HomeRoute.page,
        ),
        CustomRoute(
          path: '/setting',
          page: SettingRoute.page,
        ),
        CustomRoute(
          path: '/edit',
          page: EditRoute.page,
        ),
        CustomRoute(
          path: '/addprofile',
          page: AddProfileRoute.page,
        ),
        CustomRoute(
          path: '/createaccount',
          page: CreateAccountRoute.page,
        ),
        CustomRoute(
          path: '/nottification',
          page: NottificationRoute.page,
        ),
        /*
        CustomRoute(
            path: '/first',
            page: FirstRoute.page,
            initial: true,
            transitionsBuilder: TransitionsBuilders.slideLeft),*/
      ];
}
