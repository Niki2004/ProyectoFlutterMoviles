import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/auth/base_auth_user_provider.dart';

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? VistaCitaWidget() : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? VistaCitaWidget() : LoginWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: ClasePrincipalWidget.routeName,
          path: ClasePrincipalWidget.routePath,
          builder: (context, params) => ClasePrincipalWidget(),
        ),
        FFRoute(
          name: PerfilWidget.routeName,
          path: PerfilWidget.routePath,
          builder: (context, params) => PerfilWidget(),
        ),
        FFRoute(
          name: PaginaContactoWidget.routeName,
          path: PaginaContactoWidget.routePath,
          builder: (context, params) => PaginaContactoWidget(),
        ),
        FFRoute(
          name: PaginaInformacionWidget.routeName,
          path: PaginaInformacionWidget.routePath,
          builder: (context, params) => PaginaInformacionWidget(),
        ),
        FFRoute(
          name: RegistrarWidget.routeName,
          path: RegistrarWidget.routePath,
          builder: (context, params) => RegistrarWidget(),
        ),
        FFRoute(
          name: VistaCalendarioWidget.routeName,
          path: VistaCalendarioWidget.routePath,
          builder: (context, params) => VistaCalendarioWidget(),
        ),
        FFRoute(
          name: VistaModificarWidget.routeName,
          path: VistaModificarWidget.routePath,
          builder: (context, params) => VistaModificarWidget(),
        ),
        FFRoute(
          name: VistaCancelarWidget.routeName,
          path: VistaCancelarWidget.routePath,
          builder: (context, params) => VistaCancelarWidget(),
        ),
        FFRoute(
          name: VistaNotaMedicoWidget.routeName,
          path: VistaNotaMedicoWidget.routePath,
          builder: (context, params) => VistaNotaMedicoWidget(),
        ),
        FFRoute(
          name: CrearEmpleadoWidget.routeName,
          path: CrearEmpleadoWidget.routePath,
          builder: (context, params) => CrearEmpleadoWidget(),
        ),
        FFRoute(
          name: ModificarEmpleadoWidget.routeName,
          path: ModificarEmpleadoWidget.routePath,
          builder: (context, params) => ModificarEmpleadoWidget(),
        ),
        FFRoute(
          name: CancelarEmpleadoWidget.routeName,
          path: CancelarEmpleadoWidget.routePath,
          builder: (context, params) => CancelarEmpleadoWidget(),
        ),
        FFRoute(
          name: VistaHistorialWidget.routeName,
          path: VistaHistorialWidget.routePath,
          builder: (context, params) => VistaHistorialWidget(),
        ),
        FFRoute(
          name: BuscarEmpleadosWidget.routeName,
          path: BuscarEmpleadosWidget.routePath,
          builder: (context, params) => BuscarEmpleadosWidget(),
        ),
        FFRoute(
          name: CrearEvaluacionWidget.routeName,
          path: CrearEvaluacionWidget.routePath,
          builder: (context, params) => CrearEvaluacionWidget(),
        ),
        FFRoute(
          name: VistaEvaluacionWidget.routeName,
          path: VistaEvaluacionWidget.routePath,
          builder: (context, params) => VistaEvaluacionWidget(),
        ),
        FFRoute(
          name: VistaHistorialEmpleadoWidget.routeName,
          path: VistaHistorialEmpleadoWidget.routePath,
          builder: (context, params) => VistaHistorialEmpleadoWidget(),
        ),
        FFRoute(
          name: ClasePrincipalAdminWidget.routeName,
          path: ClasePrincipalAdminWidget.routePath,
          builder: (context, params) => ClasePrincipalAdminWidget(),
        ),
        FFRoute(
          name: CrearInventarioWidget.routeName,
          path: CrearInventarioWidget.routePath,
          builder: (context, params) => CrearInventarioWidget(),
        ),
        FFRoute(
          name: VistaInvetarioWidget.routeName,
          path: VistaInvetarioWidget.routePath,
          builder: (context, params) => VistaInvetarioWidget(),
        ),
        FFRoute(
          name: ModificarInventarioWidget.routeName,
          path: ModificarInventarioWidget.routePath,
          builder: (context, params) => ModificarInventarioWidget(),
        ),
        FFRoute(
          name: VistaInventario02Widget.routeName,
          path: VistaInventario02Widget.routePath,
          builder: (context, params) => VistaInventario02Widget(),
        ),
        FFRoute(
          name: AgregadoCorrectoInventarioWidget.routeName,
          path: AgregadoCorrectoInventarioWidget.routePath,
          builder: (context, params) => AgregadoCorrectoInventarioWidget(),
        ),
        FFRoute(
          name: ModificadoCorrectoInventarioWidget.routeName,
          path: ModificadoCorrectoInventarioWidget.routePath,
          builder: (context, params) => ModificadoCorrectoInventarioWidget(),
        ),
        FFRoute(
          name: EliminarInventariosWidget.routeName,
          path: EliminarInventariosWidget.routePath,
          builder: (context, params) => EliminarInventariosWidget(),
        ),
        FFRoute(
          name: EliminarInventarioSeguroWidget.routeName,
          path: EliminarInventarioSeguroWidget.routePath,
          builder: (context, params) => EliminarInventarioSeguroWidget(),
        ),
        FFRoute(
          name: VistaAdminInveWidget.routeName,
          path: VistaAdminInveWidget.routePath,
          builder: (context, params) => VistaAdminInveWidget(),
        ),
        FFRoute(
          name: EliminadoCorrectoInventarioWidget.routeName,
          path: EliminadoCorrectoInventarioWidget.routePath,
          builder: (context, params) => EliminadoCorrectoInventarioWidget(),
        ),
        FFRoute(
          name: FiltrosInventarioWidget.routeName,
          path: FiltrosInventarioWidget.routePath,
          builder: (context, params) => FiltrosInventarioWidget(),
        ),
        FFRoute(
          name: GestionEstadoInventarioWidget.routeName,
          path: GestionEstadoInventarioWidget.routePath,
          builder: (context, params) => GestionEstadoInventarioWidget(),
        ),
        FFRoute(
          name: ConfigurarAlertasInventarioWidget.routeName,
          path: ConfigurarAlertasInventarioWidget.routePath,
          builder: (context, params) => ConfigurarAlertasInventarioWidget(),
        ),
        FFRoute(
          name: InformacionInventarioWidget.routeName,
          path: InformacionInventarioWidget.routePath,
          builder: (context, params) => InformacionInventarioWidget(),
        ),
        FFRoute(
          name: VistaCitaWidget.routeName,
          path: VistaCitaWidget.routePath,
          builder: (context, params) => VistaCitaWidget(),
        ),
        FFRoute(
          name: CrearCitaWidget.routeName,
          path: CrearCitaWidget.routePath,
          builder: (context, params) => CrearCitaWidget(),
        ),
        FFRoute(
          name: ModificarCitaWidget.routeName,
          path: ModificarCitaWidget.routePath,
          builder: (context, params) => ModificarCitaWidget(
            sintomasParametro: params.getParam(
              'sintomasParametro',
              ParamType.String,
            ),
            complicacionPrametro: params.getParam(
              'complicacionPrametro',
              ParamType.String,
            ),
            fechaParametro: params.getParam(
              'fechaParametro',
              ParamType.DateTime,
            ),
            horaParametro: params.getParam(
              'horaParametro',
              ParamType.DateTime,
            ),
            asistenciaParametro: params.getParam(
              'asistenciaParametro',
              ParamType.String,
            ),
            eleccionUsuario: params.getParam(
              'eleccionUsuario',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['Cita'],
            ),
            nombreParametro: params.getParam(
              'nombreParametro',
              ParamType.String,
            ),
            apellidoParametro: params.getParam(
              'apellidoParametro',
              ParamType.String,
            ),
            contactoParametro: params.getParam(
              'contactoParametro',
              ParamType.String,
            ),
            usuario: params.getParam(
              'usuario',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: ModificarNotaMedicoWidget.routeName,
          path: ModificarNotaMedicoWidget.routePath,
          builder: (context, params) => ModificarNotaMedicoWidget(),
        ),
        FFRoute(
          name: CrearNotaMedicoWidget.routeName,
          path: CrearNotaMedicoWidget.routePath,
          builder: (context, params) => CrearNotaMedicoWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/login';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
