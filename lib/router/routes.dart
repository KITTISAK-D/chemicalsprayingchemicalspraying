import 'package:auto_route/auto_route.dart';
import 'package:chemicalspraying/router/routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          path: '/login',
          page: LoginRoute.page,
        ),
        CustomRoute(
          path: '/home',
          page: HomeRoute.page,
        ),
        CustomRoute(
          path: '/profile',
          page: UserProfileRoute.page,
        ),
        CustomRoute(
          path: '/edit',
          page: EditRoute.page,
        ),
       CustomRoute(
          path: '/addprofile',
          page: AddprofileRoute.page,
        ),
        CustomRoute(
          path: '/createaccount',
          page: CreateAccountRoute.page,
        ),
        CustomRoute(
          path: '/nottification',
          page: NottificationRoute.page,
        ),
        CustomRoute(
          path: '/googlemap',
          page: MapRoute.page,
        ),
        CustomRoute(
            path: '/first',
            page: FirstRoute.page,
            initial: true,
            transitionsBuilder: TransitionsBuilders.slideLeft),
      ];
}
