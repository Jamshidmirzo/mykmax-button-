import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:kmax/features/auth/presentation/screens/login_screen.dart';
import 'package:kmax/features/onboardings/presentation/providers/onboarding_provider.dart';
import 'package:kmax/features/onboardings/presentation/screens/onboarding_screen.dart';

part 'router.g.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  final onboardCompleted = ref.watch(onboardingProvider);
  final onboardingRoute = OnboardingRoute(id: 100);
  final loginRoute = LoginRoute();
  return GoRouter(
    debugLogDiagnostics: true,
    initialLocation: onboardCompleted.isShowed
        ? loginRoute.location
        : onboardingRoute.location,
    routes: $appRoutes.first.routes,
  );
});

@TypedGoRoute<RootRoute>(
  path: '/root',
  routes: [
    TypedGoRoute<LoginRoute>(
      path: '/login',
    ),
    TypedGoRoute<OnboardingRoute>(
      path: '/onboarding/:id',
    ),
  ],
)
class RootRoute extends GoRouteData with $RootRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SizedBox();
  }
}

class LoginRoute extends GoRouteData with $LoginRoute {
  const LoginRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return LoginScreen();
  }
}

class OnboardingRoute extends GoRouteData with $OnboardingRoute {
  const OnboardingRoute({required this.id});
  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return OnboardingScreen(
      userId: id,
    );
  }
}
