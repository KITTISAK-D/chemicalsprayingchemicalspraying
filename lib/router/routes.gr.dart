// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:chemicalspraying/screen/addprofile.dart' as _i1;
import 'package:chemicalspraying/screen/createaccount.dart' as _i2;
import 'package:chemicalspraying/screen/edit.dart' as _i3;
import 'package:chemicalspraying/screen/first.dart' as _i4;
import 'package:chemicalspraying/screen/googlemap.dart' as _i7;
import 'package:chemicalspraying/screen/home.dart' as _i5;
import 'package:chemicalspraying/screen/login.dart' as _i6;
import 'package:chemicalspraying/screen/nottification.dart' as _i8;
import 'package:chemicalspraying/screen/userprofile.dart' as _i9;

abstract class $AppRouter extends _i10.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    AddprofileRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AddprofilePage(),
      );
    },
    CreateAccountRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CreateAccountPage(),
      );
    },
    EditGardenRoute.name: (routeData) {
      final args = routeData.argsAs<EditGardenRouteArgs>();
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.EditGardenPage(garden: args.garden),
      );
    },
    EditRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.EditPage(),
      );
    },
    FirstRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.FirstPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.LoginPage(),
      );
    },
    MapRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MapPage(),
      );
    },
    NottificationRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.NottificationPage(),
      );
    },
    UserProfileRoute.name: (routeData) {
      return _i10.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.UserProfilePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AddprofilePage]
class AddprofileRoute extends _i10.PageRouteInfo<void> {
  const AddprofileRoute({List<_i10.PageRouteInfo>? children})
      : super(
          AddprofileRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddprofileRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CreateAccountPage]
class CreateAccountRoute extends _i10.PageRouteInfo<void> {
  const CreateAccountRoute({List<_i10.PageRouteInfo>? children})
      : super(
          CreateAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreateAccountRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i1.EditGardenPage]
class EditGardenRoute extends _i10.PageRouteInfo<EditGardenRouteArgs> {
  EditGardenRoute({
    required _i1.Garden garden,
    List<_i10.PageRouteInfo>? children,
  }) : super(
          EditGardenRoute.name,
          args: EditGardenRouteArgs(garden: garden),
          initialChildren: children,
        );

  static const String name = 'EditGardenRoute';

  static const _i10.PageInfo<EditGardenRouteArgs> page =
      _i10.PageInfo<EditGardenRouteArgs>(name);
}

class EditGardenRouteArgs {
  const EditGardenRouteArgs({required this.garden});

  final _i1.Garden garden;

  @override
  String toString() {
    return 'EditGardenRouteArgs{garden: $garden}';
  }
}

/// generated route for
/// [_i3.EditPage]
class EditRoute extends _i10.PageRouteInfo<void> {
  const EditRoute({List<_i10.PageRouteInfo>? children})
      : super(
          EditRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i4.FirstPage]
class FirstRoute extends _i10.PageRouteInfo<void> {
  const FirstRoute({List<_i10.PageRouteInfo>? children})
      : super(
          FirstRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirstRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i5.HomePage]
class HomeRoute extends _i10.PageRouteInfo<void> {
  const HomeRoute({List<_i10.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute({List<_i10.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MapPage]
class MapRoute extends _i10.PageRouteInfo<void> {
  const MapRoute({List<_i10.PageRouteInfo>? children})
      : super(
          MapRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NottificationPage]
class NottificationRoute extends _i10.PageRouteInfo<void> {
  const NottificationRoute({List<_i10.PageRouteInfo>? children})
      : super(
          NottificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NottificationRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}

/// generated route for
/// [_i9.UserProfilePage]
class UserProfileRoute extends _i10.PageRouteInfo<void> {
  const UserProfileRoute({List<_i10.PageRouteInfo>? children})
      : super(
          UserProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserProfileRoute';

  static const _i10.PageInfo<void> page = _i10.PageInfo<void>(name);
}
