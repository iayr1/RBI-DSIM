import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../views/dashboard_screen.dart';
import '../views/subject_list_screen.dart';
import '../views/profile_screen.dart';
import '../views/main_layout.dart';
import '../views/notes_screen.dart';
import '../views/flashcards_screen.dart';
import '../views/quiz_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorHomeKey = GlobalKey<NavigatorState>(debugLabel: 'shellHome');
final GlobalKey<NavigatorState> _shellNavigatorSyllabusKey = GlobalKey<NavigatorState>(debugLabel: 'shellSyllabus');
final GlobalKey<NavigatorState> _shellNavigatorProfileKey = GlobalKey<NavigatorState>(debugLabel: 'shellProfile');

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainLayout(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHomeKey,
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const DashboardScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorSyllabusKey,
          routes: [
            GoRoute(
              path: '/subjects',
              builder: (context, state) => const SubjectListScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorProfileKey,
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/notes/:id',
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        return NotesScreen(topicId: id);
      },
    ),
    GoRoute(
      path: '/flashcards',
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) => const FlashcardsScreen(),
    ),
    GoRoute(
      path: '/quiz',
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) => const QuizScreen(),
    ),
  ],
);
