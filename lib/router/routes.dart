import 'package:auto_route/auto_route.dart';
import 'package:chemicalspraying/router/routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            path: '/register',
            page: RegisterRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft),
        CustomRoute(
            path: '/login',
            page: LoginRoute.page,
            //initial: true,
            transitionsBuilder: TransitionsBuilders.slideLeft),
        CustomRoute(
            path: '/home',
            page: HomeRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft),
        CustomRoute(
            path: '/setting',
            page: SettingRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft),
        CustomRoute(
            path: '/edit',
            page: EditRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft),
        CustomRoute(
            path: '/addprofile',
            page: AddProfileRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft), 
        CustomRoute(
            path: '/createaccount',
            page: CreateAccountRoute.page,
            initial: true,
            transitionsBuilder: TransitionsBuilders.slideLeft),      
             /*
        CustomRoute(
            path: '/first',
            page: FirstRoute.page,
            initial: true,
        ),*/
      ];
}
