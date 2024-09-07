// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:chemicalspraying/screen/createaccount.dart' as _i1;
import 'package:chemicalspraying/screen/edit.dart' as _i2;
import 'package:chemicalspraying/screen/first.dart' as _i3;
import 'package:chemicalspraying/screen/home.dart' as _i4;
import 'package:chemicalspraying/screen/login.dart' as _i5;
import 'package:chemicalspraying/screen/nottification.dart' as _i6;
import 'package:chemicalspraying/screen/userprofile.dart' as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    CreateAccountRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CreateAccountPage(),
      );
    },
    EditRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EditPage(),
      );
    },
    FirstRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FirstPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    NottificationRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.NottificationPage(),
      );
    },
    UserProfileRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.UserProfilePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CreateAccountPage]
class CreateAccountRoute extends _i8.PageRouteInfo<void> {
  const CreateAccountRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CreateAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateAccountRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EditPage]
class EditRoute extends _i8.PageRouteInfo<void> {
  const EditRoute({List<_i8.PageRouteInfo>? children})
      : super(
          EditRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FirstPage]
class FirstRoute extends _i8.PageRouteInfo<void> {
  const FirstRoute({List<_i8.PageRouteInfo>? children})
      : super(
          FirstRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirstRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NottificationPage]
class NottificationRoute extends _i8.PageRouteInfo<void> {
  const NottificationRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NottificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NottificationRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.UserProfilePage]
class UserProfileRoute extends _i8.PageRouteInfo<void> {
  const UserProfileRoute({List<_i8.PageRouteInfo>? children})
      : super(
          UserProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserProfileRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
