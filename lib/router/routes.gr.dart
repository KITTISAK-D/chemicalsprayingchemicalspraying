// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:chemicalspraying/screen/addprofile.dart' as _i1;
import 'package:chemicalspraying/screen/createaccount.dart' as _i2;
import 'package:chemicalspraying/screen/edit.dart' as _i3;
import 'package:chemicalspraying/screen/home.dart' as _i4;
import 'package:chemicalspraying/screen/login.dart' as _i5;
import 'package:chemicalspraying/screen/nottification.dart' as _i6;
import 'package:chemicalspraying/screen/register.dart' as _i7;
import 'package:chemicalspraying/screen/setting.dart' as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AddProfileRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AddProfilePage(),
      );
    },
    CreateAccountRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CreateAccountPage(),
      );
    },
    EditRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.EditPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.LoginPage(),
      );
    },
    NottificationRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.NottificationPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.RegisterPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SettingPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddProfilePage]
class AddProfileRoute extends _i9.PageRouteInfo<void> {
  const AddProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AddProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddProfileRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CreateAccountPage]
class CreateAccountRoute extends _i9.PageRouteInfo<void> {
  const CreateAccountRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CreateAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateAccountRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.EditPage]
class EditRoute extends _i9.PageRouteInfo<void> {
  const EditRoute({List<_i9.PageRouteInfo>? children})
      : super(
          EditRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NottificationPage]
class NottificationRoute extends _i9.PageRouteInfo<void> {
  const NottificationRoute({List<_i9.PageRouteInfo>? children})
      : super(
          NottificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NottificationRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RegisterPage]
class RegisterRoute extends _i9.PageRouteInfo<void> {
  const RegisterRoute({List<_i9.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SettingPage]
class SettingRoute extends _i9.PageRouteInfo<void> {
  const SettingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
