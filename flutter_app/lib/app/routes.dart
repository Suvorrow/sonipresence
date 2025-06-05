import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/',
        name: 'home',
        builder: (context, state) => const HomePage(),
      )
    ],
);
