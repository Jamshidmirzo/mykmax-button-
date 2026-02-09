// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$rootRoute];

RouteBase get $rootRoute => GoRouteData.$route(
  path: '/root',
  factory: $RootRoute._fromState,
  routes: [
    GoRouteData.$route(path: '/login', factory: $LoginRoute._fromState),
    GoRouteData.$route(
      path: '/onboarding/:id',
      factory: $OnboardingRoute._fromState,
    ),
    GoRouteData.$route(
      path: '/homeDetail/:codename',
      factory: $HomeDetailRoute._fromState,
    ),
  ],
);

mixin $RootRoute on GoRouteData {
  static RootRoute _fromState(GoRouterState state) => RootRoute();

  @override
  String get location => GoRouteData.$location('/root');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $LoginRoute on GoRouteData {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  @override
  String get location => GoRouteData.$location('/login');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $OnboardingRoute on GoRouteData {
  static OnboardingRoute _fromState(GoRouterState state) =>
      OnboardingRoute(id: int.parse(state.pathParameters['id']!));

  OnboardingRoute get _self => this as OnboardingRoute;

  @override
  String get location => GoRouteData.$location(
    '/onboarding/${Uri.encodeComponent(_self.id.toString())}',
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin $HomeDetailRoute on GoRouteData {
  static HomeDetailRoute _fromState(GoRouterState state) => HomeDetailRoute(
    codename: state.pathParameters['codename']!,
    groupCodename: state.uri.queryParameters['group-codename'],
    userId: _$convertMapValue(
      'user-id',
      state.uri.queryParameters,
      int.tryParse,
    ),
  );

  HomeDetailRoute get _self => this as HomeDetailRoute;

  @override
  String get location => GoRouteData.$location(
    '/homeDetail/${Uri.encodeComponent(_self.codename)}',
    queryParams: {
      if (_self.groupCodename != null) 'group-codename': _self.groupCodename,
      if (_self.userId != null) 'user-id': _self.userId!.toString(),
    },
  );

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T? Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}
